import os

from flask import Flask, jsonify
#from procedures.attack_pipeline import *


app = Flask(__name__, static_url_path='')


@app.route('/analise/<filename>/<coords_list>', methods=['GET'])
def inject(filename, coords_list):
    filename = filename.split('+')
    filename = '/'.join(filename)
    print('Start injection...')
    print(f'Working with file {filename}')
    print(f'Inject in coords (z, y, x){coords_list.split("+")}')

    path_to_target_scan = os.path.abspath(filename)

    # Init pipeline
    injector = scan_manipulator()

    # Load target scan (provide path to dcm or mhd file)
    if not os.path.exists(path_to_target_scan):
        print(path_to_target_scan)
        return jsonify({'Done': False, 'Wrong path': path_to_target_scan}), 404

    injector.load_target_scan(path_to_target_scan)


    for coords in coords_list.split('+'):
        coords = [int(coord) for coord in coords.split(',')]
        vox_coord2 = np.array(coords)
        injector.tamper(vox_coord2, action='inject', isVox=True)

    #save dir of scan injector
    filename = filename.split('/')[-1]

    saved_dir = os.path.abspath('data/saved_scans')

    if not os.path.exists(saved_dir):
        os.mkdir(saved_dir)

    path_to_target_scan_save = os.path.join(saved_dir, filename)
    if not os.path.exists(path_to_target_scan_save):
        os.mkdir(path_to_target_scan_save)

    # Save scan
    injector.save_tampered_scan(path_to_target_scan_save, output_type='dicom')  # output can be dicom or numpy

    print('Done.\n', f'Saved Path == {path_to_target_scan_save}')

    return jsonify({'Done': True, 'saved_path': path_to_target_scan_save}), 200


@app.route('/', methods=['GET'])
def test_connect():
    return jsonify({'Done': True}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port='5000', debug=True)




