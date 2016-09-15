[Mesh]
  file = ./test1.e
 #type = GeneratedMesh
 #dim = 2
 #xmin = 0
 #xmax = 10
 #ymin = 0
 #ymax = 10
 #elem_type = QUAD4
 #nx = 100
 #ny = 100
[]

[Variables]
  active = 'flux'
  [./flux]
    order = FIRST
    family = LAGRANGE
  [../]
[]

[Kernels]
  active = 'diffusion removal source'
  [./diffusion]
    type = NeutronicDiffusion
    variable = flux
  [../]
  [./removal]
    type = NeutronicRemoval
    variable = flux
  [../]
  [./source]
    type = NeutronicSource
    variable = flux
  [../]
[]

[Materials]
  [./FissMaterial]
    type = DiffusionNeutronicsMaterial
    block = 1
    diffusion_coef = 2.0
    sigma_abs = 1.0
    nusigma_xs = 1.1
  [../]
  [./NonFissMaterial]
    type = DiffusionNeutronicsMaterial
    block = 2
    diffusion_coef = 2.0
    sigma_abs = 0.25
    nusigma_xs = 0.0
  [../]
[]

[BCs]
  active = 'leakage'
  [./leakage]
    type = DirichletBC
    variable = flux
    boundary = '1 2 3 4' # 1=left, 2=bottom, 3=right, 4=top
    value = 0.0
  [../]
  #[./reflective]
  #  type = NeumannBC
  #  variable = flux
  #  boundary = '3'
  #  value = 0.5
  #[../]
[]

[Executioner]
  type = NonlinearEigen

  bx_norm = 'unorm'
  normalization = 'unorm'
  normal_factor = 1.0

  free_power_iterations = 4
  source_abs_tol = 1e-12
  source_rel_tol = 1e-50
  k0 = 1.0

  #Preconditioned JFNK (default)
  solve_type = 'PJFNK'
[]

[Postprocessors]
  active = 'unorm dof'
    [./unorm] # Postprocessor unorm requires execute_on = 'linear'
    type = ElementIntegralVariablePostprocessor # computes a volume integral on specified variable
    variable = flux
    execute_on = linear
  [../]
  [./dof]
    type = NumDOFs
  [../]
[]

[Outputs]
  file_base = test1out
  interval = 1
  exodus = true
  csv = true
  [./console]
    type = Console
    perf_log = true
    output_on = 'initial failed nonlinear linear timestep_end'
  [../]
[]
