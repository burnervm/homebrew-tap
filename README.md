# homebrew-tap

homebrew formulas for [burner](https://github.com/patrickhere/burner), throwaway linux VMs on your own hardware.

```
brew install burnervm/tap/burner
burner setup
burner run -- 'uname -a'
```

burner needs linux with kvm, so on a mac it runs inside a [lima](https://lima-vm.io) VM with nested virtualization. `burner setup` makes the VM and installs burner in it, and every other `burner` command runs in there. that needs an M3 or newer with macOS 15 or later.

on linux, use the installer instead: `curl -fsSL https://get.burnervm.dev | sh`
