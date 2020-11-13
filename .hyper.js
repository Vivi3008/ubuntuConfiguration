// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
    config: {
        plugins: ['hyperborder'],
        borderRadiusOuter: 8,
        borderRadiusInner: 8,
        updateChannel: "stable",
        fontSize: 12,
        fontFamily: '"Fira Code", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
        fontWeight: "700",
        fontWeightBold: "bold",
        lineHeight: 1.2,
        letterSpacing: 0,
        cursorColor: "rgba(248,28,229,0.8)",
        showHamburgerMenu: "true",
        showWindowControls: "left",
        selectionColor: "rgba(248,28,229,0.3)",
        padding: "0 14px",
        shell: "/bin/zsh",
        shellArgs: ["--login"],
        bell: "SOUND",
        macOptionSelectionMode: "vertical",
        webGLRenderer: true,
    },
    plugins: ["hyper-custom-controls"],
    localPlugins: ['hyper-omni'],
    hyperMacControls: {
        flipped: true,
    },
};