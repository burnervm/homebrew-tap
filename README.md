# homebrew-tap

homebrew formulas for [burner](https://github.com/patrickhere/burner), throwaway linux VMs on your own hardware.

```
brew install burnervm/tap/burner
burner setup
burner run -- 'uname -m'
```

on a mac, burner runs VMs itself with libkrun on hypervisor.framework, no linux VM in between. any apple silicon mac, M1 and newer, with macOS 15 or later. the formula builds burner, signs it for hypervisor.framework and pulls in libkrun and e2fsprogs. `burner setup` installs the guest kernel and alpine image it fetched, both pinned by sha256 in this tap.

coming from 0.1.x, which ran burner inside a lima VM: `limactl delete burnervm` removes that VM.

on linux, use the installer instead: `curl -fsSL https://get.burnervm.dev | sh`
