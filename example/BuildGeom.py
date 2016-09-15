#!python
#!python
cubit.cmd('reset')

cubit.cmd('create surface rectangle width 30 height 30 zplane ')
cubit.cmd('create surface circle radius 10 zplane ')
cubit.cmd('subtract body 2 from body 1 keep')
cubit.cmd('delete body 1')
cubit.cmd('compress all')
cubit.cmd('imprint all')
cubit.cmd('merge all')

cubit.cmd('surface 1 size auto factor 2')
cubit.cmd('surface 1 scheme TriMesh')
cubit.cmd('mesh surface 1')
cubit.cmd('surface 1 size auto factor 3')
cubit.cmd('surface 2 scheme TriMesh')
cubit.cmd('mesh surface 2')

cubit.cmd('block 1 surface 1')
cubit.cmd('block 2 surface 2')
cubit.cmd('block 1 Element Type Tri')
cubit.cmd('block 2 Element Type Tri')
cubit.cmd('Sideset 1 curve 4  ') # left
cubit.cmd('Sideset 2 curve 4  ') # bottom
cubit.cmd('Sideset 3 curve 6  ') # right
cubit.cmd('Sideset 4 curve 3  ') # top

dum = cubit.get_error_count()
print('\n\nNUMBER OF RECORDED ERRORS: '+str(dum)+'\n')

dum_mesh = cubit.get_mesh_error_count()
print('\n\nNUMBER OF RECORDED MESH ERRORS: '+str(dum_mesh)+'\n')

cubit.cmd('set large exodus file off')
cubit.cmd('export mesh "./test1.e" dimension 2 overwrite')

