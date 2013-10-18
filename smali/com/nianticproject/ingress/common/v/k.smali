.class final Lcom/nianticproject/ingress/common/v/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field final synthetic b:Lcom/nianticproject/ingress/common/v/j;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/v/j;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/v/j;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/v/k;-><init>(Lcom/nianticproject/ingress/common/v/j;)V

    return-void
.end method

.method private static varargs a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;[Lcom/nianticproject/ingress/common/v/c;)Lcom/nianticproject/ingress/common/v/a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    new-instance v0, Lcom/nianticproject/ingress/common/v/a;

    invoke-direct {v0, p0, p2, p3}, Lcom/nianticproject/ingress/common/v/a;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;[Lcom/nianticproject/ingress/common/v/c;)V

    .line 534
    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/nianticproject/ingress/common/v/aj;)V

    .line 535
    return-object v0
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/v/aj;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    new-instance v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-direct {v0, p0, p2}, Lcom/nianticproject/ingress/common/v/aj;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/nianticproject/ingress/common/v/aj;)V

    return-object v0
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/nianticproject/ingress/common/v/aj;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, -0x4000

    invoke-virtual {v0, v1}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 495
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 496
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 382
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 383
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 385
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "User"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Sign out"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->a(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/aj;)Lcom/nianticproject/ingress/common/v/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Help"

    const-string/jumbo v3, "Go to the help center"

    const-string/jumbo v4, "Go"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->b(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/aj;)Lcom/nianticproject/ingress/common/v/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Data"

    const-string/jumbo v3, "Force clear data and resync."

    const-string/jumbo v4, "Force sync"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->c(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/aj;)Lcom/nianticproject/ingress/common/v/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Sources"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Show"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->d(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/aj;)Lcom/nianticproject/ingress/common/v/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Build"

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->e(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/aj;)Lcom/nianticproject/ingress/common/v/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    new-instance v2, Lcom/nianticproject/ingress/common/v/ak;

    invoke-direct {v2, p1}, Lcom/nianticproject/ingress/common/v/ak;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/nianticproject/ingress/common/v/aj;)V

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->a(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/ak;)Lcom/nianticproject/ingress/common/v/ak;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Compass"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Toggle"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->f(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/aj;)Lcom/nianticproject/ingress/common/v/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Location smoothing"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Toggle"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->g(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/aj;)Lcom/nianticproject/ingress/common/v/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Email"

    new-array v3, v9, [Lcom/nianticproject/ingress/common/v/c;

    new-instance v4, Lcom/nianticproject/ingress/common/v/c;

    const-string/jumbo v5, "Game notifications (Portal under attack, etc)."

    invoke-direct {v4, v8, v5, v7}, Lcom/nianticproject/ingress/common/v/c;-><init>(ILjava/lang/String;Z)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/nianticproject/ingress/common/v/c;

    const-string/jumbo v5, "Send me Ingress-related events, promotion information, offers, and news updates to my email address."

    invoke-direct {v4, v9, v5, v7}, Lcom/nianticproject/ingress/common/v/c;-><init>(ILjava/lang/String;Z)V

    aput-object v4, v3, v8

    invoke-static {p1, v0, v2, v3}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;[Lcom/nianticproject/ingress/common/v/c;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->a(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/a;)Lcom/nianticproject/ingress/common/v/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Notifications"

    new-array v3, v6, [Lcom/nianticproject/ingress/common/v/c;

    new-instance v4, Lcom/nianticproject/ingress/common/v/c;

    const-string/jumbo v5, "You are mentioned in COMM."

    invoke-direct {v4, v10, v5, v7}, Lcom/nianticproject/ingress/common/v/c;-><init>(ILjava/lang/String;Z)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/nianticproject/ingress/common/v/c;

    const-string/jumbo v5, "Portal under attack."

    invoke-direct {v4, v6, v5, v7}, Lcom/nianticproject/ingress/common/v/c;-><init>(ILjava/lang/String;Z)V

    aput-object v4, v3, v8

    new-instance v4, Lcom/nianticproject/ingress/common/v/c;

    const/4 v5, 0x5

    const-string/jumbo v6, "Recruiting and faction activity."

    invoke-direct {v4, v5, v6, v7}, Lcom/nianticproject/ingress/common/v/c;-><init>(ILjava/lang/String;Z)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/nianticproject/ingress/common/v/c;

    const/4 v5, 0x6

    const-string/jumbo v6, "Vibrate"

    invoke-direct {v4, v5, v6, v8}, Lcom/nianticproject/ingress/common/v/c;-><init>(ILjava/lang/String;Z)V

    aput-object v4, v3, v10

    invoke-static {p1, v0, v2, v3}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;[Lcom/nianticproject/ingress/common/v/c;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->b(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/a;)Lcom/nianticproject/ingress/common/v/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Notification Sounds"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "CHOOSE"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->h(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/aj;)Lcom/nianticproject/ingress/common/v/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    const-string/jumbo v2, "Agent Profile"

    new-array v3, v8, [Lcom/nianticproject/ingress/common/v/c;

    new-instance v4, Lcom/nianticproject/ingress/common/v/c;

    const/4 v5, 0x7

    const-string/jumbo v6, "Make agent stats private."

    invoke-direct {v4, v5, v6, v7}, Lcom/nianticproject/ingress/common/v/c;-><init>(ILjava/lang/String;Z)V

    aput-object v4, v3, v7

    invoke-static {p1, v0, v2, v3}, Lcom/nianticproject/ingress/common/v/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;[Lcom/nianticproject/ingress/common/v/c;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/v/j;->c(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/v/a;)Lcom/nianticproject/ingress/common/v/a;

    .line 387
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string/jumbo v2, "default-pane"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    .line 388
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 390
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/v/k;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 391
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/k;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 392
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/k;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 393
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/v/j;->y(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/ui/widget/af;

    move-result-object v5

    sget-object v6, Lcom/nianticproject/ingress/common/ui/widget/ag;->g:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/nianticproject/ingress/common/ui/widget/aa;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ILcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/ui/widget/ag;)V

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/common/v/j;->a(Lcom/nianticproject/ingress/common/v/j;Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    .line 394
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/k;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/v/k;->b:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/v/j;->z(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 395
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/k;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 396
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/k;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-array v3, v9, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/widget/bd;->a([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 397
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/k;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 398
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/k;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->remove()Z

    .line 378
    return-void
.end method
