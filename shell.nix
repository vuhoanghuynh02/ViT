{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  packages = with pkgs; [
    (python3.withPackages (python-pkgs: with python-pkgs; [
      jupyter
      notebook
      ipykernel

      numpy
      matplotlib

      einops
      torch
      torchvision
      torchinfo
    ]))
  ];
}
