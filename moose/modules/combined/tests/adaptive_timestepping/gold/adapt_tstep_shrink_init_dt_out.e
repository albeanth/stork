CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_elem_var      num_info  �   num_glo_var             api_version       @��H   version       @��H   floating_point_word_size            	file_size               title         out_shrink_init_dt.e       maximum_name_length                 %   
time_whole                            �T   	eb_status                             
   eb_prop1               name      ID              
   	ns_status         	                    
   ns_prop1      	         name      ID              
,   	ss_status         
                    
<   ss_prop1      
         name      ID              
L   coordx                      @      
\   coordy                      @      
�   coordz                      @      
�   eb_names                       $         ns_names      	                 �      @   ss_names      
                 �      �   
coor_names                         d      H   connect1                  	elem_type         HEX8                 �   elem_num_map                          �   elem_ss1                          �   side_ss1                          �   elem_ss2                          �   side_ss2                          �   elem_ss3                          �   side_ss3                          �   elem_ss4                          �   side_ss4                          �   node_ns1                          �   node_ns2                              node_ns3                             node_ns4                              vals_nod_var1                          @      �\   vals_nod_var2                          @      ��   vals_nod_var3                          @      ��   name_nod_var                       d      0   name_elem_var                          $      �   vals_elem_var1eb1                                �   info_records                      �x      �   name_glo_var                       $      �0   vals_glo_var                             �$                                                      ��      ��      ��      ��      ?�      ?�      ?�      ?�      ��      ��      ?�      ?�      ��      ��      ?�      ?�      ?�      ��      ��      ?�      ?�      ��      ��      ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         disp_x                           disp_y                           disp_z                            stress_yy                           ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               adapt_tstep_shrink_init_dt.i                                                                                                                                      ### Input File ###                                                                                                                                                                                                                                 [Mesh]                                                                             action                         = init_displaced_problem                          displacements                  = 'disp_x disp_y disp_z'                          name                           = Mesh                                            parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 5                                               uniform_refine                 = 0                                               file                           = 1x1x1_cube.e                                    isMooseObjectAction            = 1                                               nemesis                        = 0                                               patch_size                     = 40                                              skip_partitioning              = 0                                               type                           = MooseMesh                                       _dimension                     = 1                                               construct_side_list_from_node_list = 0                                           second_order                   = 0                                             []                                                                                                                                                                [Functions]                                                                        action                         = no_action                                       name                           = Functions                                       parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 19                                                                                                                               [./top_pull]                                                                       action                       = add_function                                      isMooseObjectAction          = 1                                                 name                         = Functions/top_pull                                parser_handle                = 0x7fff6f911e08                                    type                         = PiecewiseLinear                                   unique_id                    = 3                                                 built_by_action              = add_function                                      scale_factor                 = 1                                                 x                            = '0 1'                                             y                            = '1 1'                                           [../]                                                                          []                                                                                                                                                                [Variables]                                                                        action                         = no_action                                       name                           = Variables                                       parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 19                                                                                                                               [./disp_x]                                                                         action                       = add_variable                                      family                       = LAGRANGE                                          initial_condition            = 0                                                 name                         = Variables/disp_x                                  order                        = FIRST                                             parser_handle                = 0x7fff6f911e08                                    scaling                      = 1                                                 unique_id                    = 10                                              [../]                                                                                                                                                             [./disp_y]                                                                         action                       = add_variable                                      family                       = LAGRANGE                                          initial_condition            = 0                                                 name                         = Variables/disp_y                                  order                        = FIRST                                             parser_handle                = 0x7fff6f911e08                                    scaling                      = 1                                                 unique_id                    = 10                                              [../]                                                                                                                                                             [./disp_z]                                                                         action                       = add_variable                                      family                       = LAGRANGE                                          initial_condition            = 0                                                 name                         = Variables/disp_z                                  order                        = FIRST                                             parser_handle                = 0x7fff6f911e08                                    scaling                      = 1                                                 unique_id                    = 10                                                initial_from_file_timestep   = 2                                               [../]                                                                                                                                                             [./disp_x]                                                                         action                       = copy_nodal_vars                                   initial_from_file_timestep   = 2                                                 name                         = Variables/disp_x                                  parser_handle                = 0x7fff6f911e08                                    unique_id                    = 11                                              [../]                                                                                                                                                             [./disp_y]                                                                         action                       = copy_nodal_vars                                   initial_from_file_timestep   = 2                                                 name                         = Variables/disp_y                                  parser_handle                = 0x7fff6f911e08                                    unique_id                    = 11                                              [../]                                                                          []                                                                                                                                                                [AuxVariables]                                                                     action                         = no_action                                       name                           = AuxVariables                                    parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 19                                                                                                                               [./stress_yy]                                                                      action                       = add_aux_variable                                  family                       = MONOMIAL                                          initial_condition            = 0                                                 name                         = AuxVariables/stress_yy                            order                        = CONSTANT                                          parser_handle                = 0x7fff6f911e08                                    scaling                      = 1                                                 unique_id                    = 10                                                initial_from_file_timestep   = 2                                               [../]                                                                          []                                                                                                                                                                [AuxKernels]                                                                       action                         = no_action                                       name                           = AuxKernels                                      parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 19                                                                                                                               [./stress_yy]                                                                      action                       = add_aux_kernel                                    isMooseObjectAction          = 1                                                 name                         = AuxKernels/stress_yy                              parser_handle                = 0x7fff6f911e08                                    type                         = MaterialTensorAux                                 unique_id                    = 15                                                built_by_action              = add_aux_kernel                                    execute_on                   = residual                                          index                        = 1                                                 quantity                     =                                                   tensor                       = stress                                            use_displaced_mesh           = 0                                                 variable                     = stress_yy                                       [../]                                                                          []                                                                                                                                                                [BCs]                                                                              [./u_xy_fix]                                                                       action                       = add_bc                                            isMooseObjectAction          = 1                                                 name                         = BCs/u_xy_fix                                      parser_handle                = 0x7fff6f911e08                                    type                         = DirichletBC                                       unique_id                    = 18                                                boundary                     = 2                                                 built_by_action              = add_bc                                            execute_on                   = residual                                          use_displaced_mesh           = 0                                                 value                        = 0                                                 variable                     = disp_z                                          [../]                                                                                                                                                             [./u_yz_fix]                                                                       action                       = add_bc                                            isMooseObjectAction          = 1                                                 name                         = BCs/u_yz_fix                                      parser_handle                = 0x7fff6f911e08                                    type                         = DirichletBC                                       unique_id                    = 18                                                boundary                     = 4                                                 built_by_action              = add_bc                                            execute_on                   = residual                                          use_displaced_mesh           = 0                                                 value                        = 0                                                 variable                     = disp_x                                          [../]                                                                                                                                                             [./u_bottom_fix]                                                                   action                       = add_bc                                            isMooseObjectAction          = 1                                                 name                         = BCs/u_bottom_fix                                  parser_handle                = 0x7fff6f911e08                                    type                         = DirichletBC                                       unique_id                    = 18                                                boundary                     = 3                                                 built_by_action              = add_bc                                            execute_on                   = residual                                          use_displaced_mesh           = 0                                                 value                        = 0                                                 variable                     = disp_y                                          [../]                                                                                                                                                           [BCs]                                                                              action                         = no_action                                       name                           = BCs                                             parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 19                                                                                                                               [./u_top_pull]                                                                     action                       = add_bc                                            isMooseObjectAction          = 1                                                 name                         = BCs/u_top_pull                                    parser_handle                = 0x7fff6f911e08                                    type                         = Pressure                                          unique_id                    = 18                                                boundary                     = 5                                                 built_by_action              = add_bc                                            component                    = 1                                                 execute_on                   = residual                                          factor                       = -5e+07                                            function                     = top_pull                                          use_displaced_mesh           = 1                                                 variable                     = disp_y                                          [../]                                                                          []                                                                                                                                                                [Materials]                                                                        [./elastic]                                                                        action                       = add_material                                      isMooseObjectAction          = 1                                                 name                         = Materials/elastic                                 parser_handle                = 0x7fff6f911e08                                    type                         = Elastic                                           unique_id                    = 22                                                block                        = 1                                                 built_by_action              = add_material                                      cracking_stress              = 0                                                 disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            execute_on                   = residual                                          increment_calculation        = RashidApprox                                      large_strain                 = 0                                                 max_cracks                   = 3                                                 poissons_ratio               = 0.3                                               temp                         =                                                   thermal_expansion            = 0                                                 youngs_modulus               = 2e+11                                           [../]                                                                                                                                                           [Materials]                                                                        action                         = no_action                                       name                           = Materials                                       parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 19                                            []                                                                                                                                                                [Postprocessors]                                                                   [./_dt]                                                                            action                       = add_postprocessor                                 isMooseObjectAction          = 1                                                 name                         = Postprocessors/_dt                                parser_handle                = 0x7fff6f911e08                                    type                         = PrintDT                                           unique_id                    = 23                                                built_by_action              = add_postprocessor                                 execute_on                   = residual                                          output                       = 1                                                 use_displaced_mesh           = 0                                               [../]                                                                                                                                                           [Postprocessors]                                                                   action                         = no_action                                       name                           = Postprocessors                                  parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 19                                            []                                                                                                                                                                [Executioner]                                                                      action                         = setup_executioner                               isMooseObjectAction            = 1                                               l_abs_step_tol                 = 1e-06                                           l_max_its                      = 100                                             l_tol                          = 1e-05                                           name                           = Executioner                                     nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 0.0001                                          nl_max_funcs                   = 10000                                           nl_max_its                     = 100                                             nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-16                                           no_fe_reinit                   = 0                                               parser_handle                  = 0x7fff6f911e08                                  petsc_options                  = '-snes_mf -ksp_monitor -snes_ksp_ew'            petsc_options_iname            = '-snes_type -snes_ls -ksp_gmres_restart'        petsc_options_value            = 'ls basic 101'                                  scheme                         = backward-euler                                  type                           = AdaptiveTransient                               unique_id                      = 4                                               _mesh                          = 0x7fb240447720                                  built_by_action                = setup_executioner                               cutback_factor                 = 0.5                                             dt                             = 5                                               dtmax                          = 1e+30                                           dtmin                          = 3                                               end_time                       = 13                                              growth_factor                  = 2                                               iteration_window               = 1                                               linear_iteration_ratio         = 1                                               n_startup_steps                = 0                                               num_steps                      = 1.79769e+308                                    optimal_iterations             = 1                                               predictor_scale                = 0                                               ss_check_tol                   = 1e-08                                           ss_tmin                        = 0                                               start_time                     = 0                                               sync_times                     = -1                                              trans_ss_check                 = 0                                             []                                                                                                                                                                [Output]                                                                           action                         = setup_output                                    elemental_as_nodal             = 0                                               exodus                         = 1                                               exodus_inputfile_output        = 1                                               file_base                      = out_shrink_init_dt                              gmv                            = 0                                               gnuplot_format                 = ps                                              interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    max_pps_rows_screen            = 0                                               name                           = Output                                          nemesis                        = 0                                               output_displaced               = 0                                               output_initial                 = 1                                               output_solution_history        = 0                                               parser_handle                  = 0x7fff6f911e08                                  perf_log                       = 0                                               postprocessor_csv              = 0                                               postprocessor_ensight          = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               unique_id                      = 7                                               xda                            = 0                                             []                                                                                                                                                                [setup_subproblem]                                                                 action                         = setup_subproblem                                coord_type                     = XYZ                                             name                           = setup_subproblem                                parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 6                                             []                                                                                                                                                                [setup_quadrature]                                                                 action                         = setup_quadrature                                name                           = setup_quadrature                                order                          = AUTO                                            parser_handle                  = 0x7fff6f911e08                                  type                           = GAUSS                                           unique_id                      = 29                                            []                                                                                                                                                                [setup_dampers]                                                                    action                         = setup_dampers                                   name                           = setup_dampers                                   parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 38                                            []                                                                                                                                                                [no_action]                                                                        action                         = no_action                                       name                           = no_action                                       parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 19                                            []                                                                                                                                                                [SolidMechanics]                                                                   [./solid]                                                                          action                       = add_kernel                                        disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            name                         = SolidMechanics/solid                              parser_handle                = 0x7fff6f911e08                                    temp                         =                                                   unique_id                    = 45                                              [../]                                                                          []                                                                                                                                                                [init_problem]                                                                     action                         = init_problem                                    name                           = init_problem                                    parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 40                                            []                                                                                                                                                                [check_integrity]                                                                  action                         = check_integrity                                 name                           = check_integrity                                 parser_handle                  = 0x7fff6f911e08                                  unique_id                      = 41                                            []                                                                                                                                                                [no_action]                                                                        action                         = no_action                                       name                           = no_action                                       unique_id                      = 19                                              _dt                                                                                                                                                                                                                                                         @                                      ��������������������                ?0b�$ww�?0b�$ww�                ?0b�$ww�?0b�$ww������                ����������                �����A�׃���]@      @                                       ��������������������                ?0b�$ww�?0b�$ww�                ?0b�$ww�?0b�$ww������                ����������                �����A�׃���]@      @&                                      ��������������������                ?0b�$ww�?0b�$ww�                ?0b�$ww�?0b�$ww������                ����������                �����A�׃���]@      @*                                      ��������������������                ?0b�$ww�?0b�$ww�                ?0b�$ww�?0b�$ww������                ����������                �����A�׃���]@       