## * https://docs.python.org/3.10/library/venv.html
import nimpy

proc create*(
  env_dir              : string;
  system_site_packages = false;
  clear                = false;
  symlinks             = false;
  with_pip             = false;
  prompt               = "."  ;
  upgrade_deps         = false;
) = discard nimpy.pyImport("venv").create(env_dir, system_site_packages, clear, symlinks, with_pip, prompt, upgrade_deps)
