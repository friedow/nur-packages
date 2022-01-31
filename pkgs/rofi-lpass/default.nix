{ stdenv, lib, fetchFromGitHub, ... }:

stdenv.mkDerivation rec {
  name = "rofi-lpass";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "Mange";
    repo = "rofi-lpass";
    rev = "3f1ef806fecee444962b460cb5e95cf4b51753d1";
    sha256 = "05hwn0f9grgzx33vv2i82l1l1y9drkj89wy5jm3bzwxacj7yvkpl";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp rofi-lpass $out/bin/rofi-lpass
  '';

  meta = with lib; {
    description = "Lastpass integration with Rofi";
    homepage = "https://github.com/Mange/rofi-lpass";
    maintainers = [ "Mange" ];
    platforms = platforms.linux;
  };
}
