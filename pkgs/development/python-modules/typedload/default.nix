{ stdenv, fetchPypi, buildPythonPackage}:

buildPythonPackage rec {
  pname = "typedload";
  version = "1.10";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0hls27za1l30dvrc8izq07hrn6l52fidk17sy3wnwz6sqq065bz0";
  };

  outputs = [ "out" ];

  meta = with stdenv.lib; {
    description = "Python library to load dynamically typed data into statically typed data structures";
    homepage = https://github.com/ltworf/typedload;
    license = licenses.gpl3;
  };
}
