{ ... }: 

{
  system.defaults = {
    # TODO: these settings do not appear to be properly applied
    # TODO: would be nice if we could specify which applications to be docked
    dock = {
        autohide = true;
        orientation = "left";
        show-process-indicators = false;
        show-recents = false;
        static-only = true;
    };
    finder = {
        AppleShowAllExtensions = true;
        FXDefaultSearchScope = "SCcf";
        FXEnableExtensionChangeWarning = false;
        ShowPathbar = true;
    };
  };

  security.pam.enableSudoTouchIdAuth = true;
}
