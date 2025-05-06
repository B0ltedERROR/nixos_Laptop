{ ... }:
{
  programs.firefox = {
    enable = true;

#     profiles.b0lt = {
#         extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
#             News-Paywall-Bypass
#             darkreader
#             i-dont-care-about-cookies
#             proton-pass
#             view-image
#             ublock-origin
#             youtube-shorts-block
#         ];
#     };
  };

  programs.home-manager.enable = true;
}
