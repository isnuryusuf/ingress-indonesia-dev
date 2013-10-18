.class public Lcom/nianticproject/ingress/common/missions/a/l;
.super Lcom/nianticproject/ingress/common/ui/b/k;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/cq;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/missions/a/r;

.field private final c:Lcom/nianticproject/ingress/common/c/e;

.field private final d:Lcom/nianticproject/ingress/common/c/ak;

.field private e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/a/r;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/c/ak;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const-string/jumbo v0, "MissionBriefingActivity"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/b/k;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/l;->b:Lcom/nianticproject/ingress/common/missions/a/r;

    .line 52
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/a/l;->c:Lcom/nianticproject/ingress/common/c/e;

    .line 53
    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/a/l;->d:Lcom/nianticproject/ingress/common/c/ak;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method private a(FLjava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->b:Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/r;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b()V

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->b:Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/r;->s()V

    .line 162
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/l;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/a/p;

    invoke-direct {v1, p0, p2}, Lcom/nianticproject/ingress/common/missions/a/p;-><init>(Lcom/nianticproject/ingress/common/missions/a/l;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/nianticproject/ingress/common/ui/t;->a(FLjava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/a/l;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nianticproject/ingress/common/missions/a/l;->a(ILcom/nianticproject/ingress/common/ui/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/a/l;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/missions/a/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/a/l;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/nianticproject/ingress/common/missions/a/l;->a(ILcom/nianticproject/ingress/common/ui/b/b;)V

    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/l;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/missions/a/l;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/nianticproject/ingress/common/missions/a/l;->a(ILcom/nianticproject/ingress/common/ui/b/b;)V

    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/l;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/l;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/l;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/missions/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/l;->j()V

    return-void
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/l;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/k;->a()V

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->d:Lcom/nianticproject/ingress/common/c/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Z)V

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->c:Lcom/nianticproject/ingress/common/c/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->b(Z)V

    .line 86
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    .line 87
    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 88
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/cs;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/missions/cs;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Lcom/nianticproject/ingress/common/ui/widget/z;",
            "Lcom/nianticproject/ingress/common/ui/widget/z;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 120
    const v10, 0x3e4ccccd

    new-instance v0, Lcom/nianticproject/ingress/common/missions/a/n;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/nianticproject/ingress/common/missions/a/n;-><init>(Lcom/nianticproject/ingress/common/missions/a/l;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;ZLcom/nianticproject/ingress/common/missions/cs;)V

    invoke-direct {p0, v10, v0}, Lcom/nianticproject/ingress/common/missions/a/l;->a(FLjava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/ct;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    const v8, 0x3fb33333

    new-instance v0, Lcom/nianticproject/ingress/common/missions/a/o;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/missions/a/o;-><init>(Lcom/nianticproject/ingress/common/missions/a/l;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;ZLcom/nianticproject/ingress/common/missions/ct;)V

    invoke-direct {p0, v8, v0}, Lcom/nianticproject/ingress/common/missions/a/l;->a(FLjava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/widget/z;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    const v0, 0x3e4ccccd

    new-instance v1, Lcom/nianticproject/ingress/common/missions/a/m;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/missions/a/m;-><init>(Lcom/nianticproject/ingress/common/missions/a/l;Lcom/nianticproject/ingress/common/ui/widget/z;)V

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/missions/a/l;->a(FLjava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/b/k;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 67
    const-string/jumbo v0, "ada_wheel_large_inner"

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 69
    const-string/jumbo v0, "ada_wheel_large_outer"

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 71
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/l;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const v1, 0x3e4ccccd

    new-instance v2, Lcom/nianticproject/ingress/common/missions/a/q;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/missions/a/q;-><init>(Lcom/nianticproject/ingress/common/missions/a/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/t;->a(FLjava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string/jumbo v0, "MissionBriefingActivity"

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->d:Lcom/nianticproject/ingress/common/c/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Z)V

    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->c:Lcom/nianticproject/ingress/common/c/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->b(Z)V

    .line 95
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/k;->e()V

    .line 96
    return-void
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->b:Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/r;->j()V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public final q_()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/k;->q_()V

    .line 77
    return-void
.end method

.method public final s_()Lcom/nianticproject/ingress/common/missions/cl;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/l;->b:Lcom/nianticproject/ingress/common/missions/a/r;

    return-object v0
.end method
