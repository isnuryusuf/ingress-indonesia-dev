.class final Lc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field final synthetic a:Lb;


# direct methods
.method constructor <init>(Lb;)V
    .locals 0

    iput-object p1, p0, Lc;->a:Lb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LG;)V
    .locals 2

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->a(Lb;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, -0x4000

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->a(Lb;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lc;->a:Lb;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-static {v0, v1}, Lb;->a(Lb;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->a(Lb;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v0, p0, Lc;->a:Lb;

    new-instance v1, LG;

    const-string v2, "Gameplay tweaks"

    invoke-direct {v1, p1, v2, v4}, LG;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lb;->a(Lb;LG;)LG;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->a(Lb;)LG;

    move-result-object v0

    const-string v1, "TARGET and FIRE"

    const-string v2, ""

    new-instance v3, Ld;

    invoke-direct {v3, p0}, Ld;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->a(Lb;)LG;

    move-result-object v0

    invoke-direct {p0, v0}, Lc;->a(LG;)V

    iget-object v0, p0, Lc;->a:Lb;

    new-instance v1, LG;

    const-string v2, "Menu tabs"

    invoke-direct {v1, p1, v2, v4}, LG;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lb;->b(Lb;LG;)LG;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->b(Lb;)LG;

    move-result-object v0
## Change

    const-string v1, "ITEMS"

    const-string v2, ""

    new-instance v3, Lo;

    invoke-direct {v3, p0}, Lo;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->b(Lb;)LG;

    move-result-object v0

    const-string v1, "INVENTORY"

    const-string v2, "Show"

    new-instance v3, Lz;

    invoke-direct {v3, p0}, Lz;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->b(Lb;)LG;

    move-result-object v0

    const-string v1, "AGENT"

    const-string v2, "Show"

    new-instance v3, LA;

    invoke-direct {v3, p0}, LA;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->b(Lb;)LG;

    move-result-object v0

    const-string v1, "MISSIONS"

    const-string v2, "Show"

    new-instance v3, LB;

    invoke-direct {v3, p0}, LB;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->b(Lb;)LG;

    move-result-object v0

    const-string v1, "INTEL"

    const-string v2, "Show"

    new-instance v3, LC;

    invoke-direct {v3, p0}, LC;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->b(Lb;)LG;

    move-result-object v0

    const-string v1, "RECRUIT"

    const-string v2, "Show"

    new-instance v3, LD;

    invoke-direct {v3, p0}, LD;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->b(Lb;)LG;

    move-result-object v0

    const-string v1, "PASSCODE"

    const-string v2, "Show"

    new-instance v3, LE;

    invoke-direct {v3, p0}, LE;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->b(Lb;)LG;

    move-result-object v0

    const-string v1, "DEVICE"

    const-string v2, "Show"

    new-instance v3, LF;

    invoke-direct {v3, p0}, LF;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->b(Lb;)LG;

    move-result-object v0

    invoke-direct {p0, v0}, Lc;->a(LG;)V

    iget-object v0, p0, Lc;->a:Lb;

    new-instance v1, LG;

    const-string v2, "Animations"

    invoke-direct {v1, p1, v2, v4}, LG;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lb;->c(Lb;LG;)LG;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->c(Lb;)LG;

    move-result-object v0

    const-string v1, "Scanner zoom in"

    const-string v2, ""

    new-instance v3, Le;

    invoke-direct {v3, p0}, Le;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->c(Lb;)LG;

    move-result-object v0

    const-string v1, "Hacking"

    const-string v2, ""

    new-instance v3, Lf;

    invoke-direct {v3, p0}, Lf;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->c(Lb;)LG;

    move-result-object v0

    const-string v1, "Item rotation"

    const-string v2, ""

    new-instance v3, Lg;

    invoke-direct {v3, p0}, Lg;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->c(Lb;)LG;

    move-result-object v0

    const-string v1, "Recycle animation"

    const-string v2, ""

    new-instance v3, Lh;

    invoke-direct {v3, p0}, Lh;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->c(Lb;)LG;

    move-result-object v0

    const-string v1, "XM flow"

    const-string v2, ""

    new-instance v3, Li;

    invoke-direct {v3, p0}, Li;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->c(Lb;)LG;

    move-result-object v0

    const-string v1, "Shield Animation"

    const-string v2, ""

    new-instance v3, Lj;

    invoke-direct {v3, p0}, Lj;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->c(Lb;)LG;

    move-result-object v0

    invoke-direct {p0, v0}, Lc;->a(LG;)V

    iget-object v0, p0, Lc;->a:Lb;

    new-instance v1, LG;

    const-string v2, "UI tweaks"

    invoke-direct {v1, p1, v2, v4}, LG;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lb;->d(Lb;LG;)LG;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Fullscreen"

    const-string v2, ""

    new-instance v3, Lk;

    invoke-direct {v3, p0}, Lk;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Portal vectors"

    const-string v2, ""

    new-instance v3, Ll;

    invoke-direct {v3, p0}, Ll;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Portal particles"

    const-string v2, ""

    new-instance v3, Lm;

    invoke-direct {v3, p0}, Lm;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Scanner objects"

    const-string v2, ""

    new-instance v3, Ln;

    invoke-direct {v3, p0}, Ln;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Simplify Items"

    const-string v2, ""

    new-instance v3, Lp;

    invoke-direct {v3, p0}, Lp;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Chat time format"

    const-string v2, ""

    new-instance v3, Lq;

    invoke-direct {v3, p0}, Lq;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Vibrate"

    const-string v2, ""

    new-instance v3, Lr;

    invoke-direct {v3, p0}, Lr;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Keep screen on"

    const-string v2, ""

    new-instance v3, Ls;

    invoke-direct {v3, p0}, Ls;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Keep GPS on"

    const-string v2, ""

    new-instance v3, Lt;

    invoke-direct {v3, p0}, Lt;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Modify portal info"

    const-string v2, ""

    new-instance v3, Lu;

    invoke-direct {v3, p0}, Lu;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Allow Cubes recyling"

    const-string v2, ""

    new-instance v3, Lv;

    invoke-direct {v3, p0}, Lv;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    const-string v1, "Privacy"

    const-string v2, ""

    new-instance v3, Lw;

    invoke-direct {v3, p0}, Lw;-><init>(Lc;)V

    invoke-virtual {v0, v1, v2, v3}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v0, p0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->e(Lb;)LG;

    move-result-object v0

    invoke-direct {p0, v0}, Lc;->a(LG;)V

    iget-object v6, p0, Lc;->a:Lb;

    new-instance v0, LG;

    const-string v2, "UI variant"

    const-string v3, ""

    const-string v4, "Toggle"

    new-instance v5, Lx;

    invoke-direct {v5, p0}, Lx;-><init>(Lc;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LG;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    invoke-static {v6, v0}, Lb;->e(Lb;LG;)LG;

    move-result-object v0

    invoke-direct {p0, v0}, Lc;->a(LG;)V

    iget-object v6, p0, Lc;->a:Lb;

    new-instance v0, LG;

    const-string v2, "Restart"

    const-string v3, ""

    const-string v4, "Restart app"

    new-instance v5, Ly;

    invoke-direct {v5}, Ly;-><init>()V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LG;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    invoke-static {v6, v0}, Lb;->f(Lb;LG;)LG;

    move-result-object v0

    invoke-direct {p0, v0}, Lc;->a(LG;)V

    new-instance v0, LG;

    const-string v1, "Mod version"

    invoke-static {}, LJ;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, LG;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc;->a(LG;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setFillParent(Z)V

    iget-object v1, p0, Lc;->a:Lb;

    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    float-to-int v3, v3

    sget-object v4, LJ;->a:Lcom/nianticproject/ingress/common/inventory/i;

    sget-object v5, Lcom/nianticproject/ingress/common/ui/widget/ag;->MOD_ABOUT:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/nianticproject/ingress/common/ui/widget/aa;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ILcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/ui/widget/ag;)V

    invoke-static {v1, v2}, Lb;->a(Lb;Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    iget-object v1, p0, Lc;->a:Lb;

    invoke-static {v1}, Lb;->a(Lb;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/aa;->a()V

    iget-object v1, p0, Lc;->a:Lb;

    invoke-static {v1}, Lb;->a(Lb;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, p0, Lc;->a:Lb;

    invoke-static {v2}, Lb;->a(Lb;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Lcom/a/a/c;->e(F)Lcom/a/a/c;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public final a(F)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method
