REMOTE="http://mirror.ctan.org/systems/texlive/tlnet";

INSTALL="/tmp/install-texlive";

mkdir -p "$INSTALL";
curl -sSL "$REMOTE/install-tl-unx.tar.gz" | tar -xz -C "$INSTALL" \
    --strip-components=1;
"$INSTALL/install-tl" -profile .github/workflows/texlive.profile;

export PATH="/tmp/texlive/bin/x86_64-linux:$PATH";

tlmgr install l3build \
    fontname fontspec l3packages xetex \
    cjk environ ms trimspaces ulem zhnumber \
    fandol tex-gyre xits \
    bibunits caption enumitem etoolbox footmisc notoccite pdfpages unicode-math \
    booktabs koma-script nomencl ntheorem siunitx xkeyval \
    bitset letltxmacro pdfescape pdflscape \
    hologo listings xcolor \
    diagbox float fp metalogo multirow pict2e \
    latexmk ctex ntheorem newtx fontaxes psnfss pdfpages enumitem environ trimspaces\
    footmisc fancyhdr varwidth changepage placeins multirow subfigure ccaption splitindex\
    xltxtra realscripts siunitx mathrsfs jknapltx mathrsfs algorithm2e ifoddpage relsize\
    listings glossaries mfirstuc textcase xfor datatool tracklang pdflscape rsfs\
    t1xtt txfonts xeCJKfntef xecjk tex-gyre