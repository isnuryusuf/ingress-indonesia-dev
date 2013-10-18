.class public Lcom/nianticproject/ingress/common/playerprofile/ao;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/playerprofile/ax;

.field private final b:Lcom/nianticproject/ingress/common/playerprofile/bi;

.field private final c:Lcom/nianticproject/ingress/common/playerprofile/bd;

.field private final d:Lcom/nianticproject/ingress/common/playerprofile/bc;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/inventory/i;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 61
    const-string/jumbo v0, "PlayerProfileActivity"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 64
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->e:Ljava/lang/String;

    .line 65
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ax;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->a:Lcom/nianticproject/ingress/common/playerprofile/ax;

    .line 66
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ae;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/playerprofile/ae;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    .line 67
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bd;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/ao;->k()Z

    move-result v1

    invoke-direct {v0, v1, p2, p4}, Lcom/nianticproject/ingress/common/playerprofile/bd;-><init>(ZLcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/inventory/i;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->c:Lcom/nianticproject/ingress/common/playerprofile/bd;

    .line 68
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bc;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->a:Lcom/nianticproject/ingress/common/playerprofile/ax;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->c:Lcom/nianticproject/ingress/common/playerprofile/bd;

    move-object v4, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/playerprofile/bc;-><init>(Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/playerprofile/bi;Lcom/nianticproject/ingress/common/playerprofile/bj;Lcom/nianticproject/ingress/common/j/av;ZZ)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->d:Lcom/nianticproject/ingress/common/playerprofile/bc;

    .line 70
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/ao;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->c:Lcom/nianticproject/ingress/common/playerprofile/bd;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 71
    return-void

    :cond_0
    move v0, v5

    .line 63
    goto :goto_0
.end method

.method public static l()Z
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/p/a;->a()Lcom/nianticproject/ingress/knobs/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->b(Lcom/nianticproject/ingress/knobs/b;)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/p/a;->a()Lcom/nianticproject/ingress/knobs/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->e(Lcom/nianticproject/ingress/knobs/b;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glClearColor(FFFF)V

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->c:Lcom/nianticproject/ingress/common/playerprofile/bd;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/bd;->a()V

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->d:Lcom/nianticproject/ingress/common/playerprofile/bc;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/bc;->a(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string/jumbo v0, "PlayerProfileActivity"

    return-object v0
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ao;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/bi;->b()V

    .line 97
    return-void
.end method
