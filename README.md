# Dotfiles 📂

System configuration that's usually changing a lot and isn't perfect, but I think it's bangin'

---

## Things to know

**Q: What's this built with?**

This dotfiles repo uses [Chezmoi](https://www.chezmoi.io/) to manage everything. Getting started is pretty simple, but do know that everything here is built for my own preferences and may not your cup of tea 🫖.

| Thing                          | Tool of choice                          |
| ------------------------------ | --------------------------------------- |
| Shell                          | [Fish](https://fishshell.com/)          |
| Shell Prompt                   | [Starship](https://starship.rs/)        |
| Package Manager                | [Brew (MacOS)](https://brew.sh/)        |
| Other things this will install | [Brewfile](Development/System/Brewfile) |

**Q: Noice. How do I actually use this repo to configure my own setup?**

Fork this repo🍴 & edit it howevery you like, or just copy chunks of it along with the [Chezmoi docs here](https://www.chezmoi.io/user-guide/command-overview/)

If you like everything I've got going on, just run this wee lad  
`$ sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply electrocally`
