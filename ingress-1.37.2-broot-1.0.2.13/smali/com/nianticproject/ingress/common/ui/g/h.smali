.class final Lcom/nianticproject/ingress/common/ui/g/h;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/inventory/ui/q;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final c:Lcom/nianticproject/ingress/common/j/av;

.field private final d:Lcom/nianticproject/ingress/common/model/k;

.field private e:Lcom/nianticproject/ingress/shared/n;

.field private f:Lcom/nianticproject/ingress/common/ui/g/a;

.field private g:I


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    if-eqz p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p2, v0}, Lcom/nianticproject/ingress/common/ui/g/j;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/shared/n;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 45
    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->g:I

    .line 53
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/g/h;->a:Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 54
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/g/h;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 55
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/g/h;->c:Lcom/nianticproject/ingress/common/j/av;

    .line 56
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/g/h;->d:Lcom/nianticproject/ingress/common/model/k;

    .line 57
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/shared/n;->f:Lcom/nianticproject/ingress/shared/n;

    goto :goto_0
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;)Lcom/nianticproject/ingress/common/ui/g/h;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/nianticproject/ingress/common/ui/g/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/g/h;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;)V

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;)Lcom/nianticproject/ingress/common/ui/g/h;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    new-instance v1, Lcom/nianticproject/ingress/common/ui/g/h;

    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/g/h;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;)V

    return-object v1
.end method


# virtual methods
.method final a()V
    .locals 8

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->a:Lcom/nianticproject/ingress/common/inventory/ui/q;

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lcom/nianticproject/ingress/common/ui/g/i;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g/h;->a:Lcom/nianticproject/ingress/common/inventory/ui/q;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/g/h;->c:Lcom/nianticproject/ingress/common/j/av;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/g/h;->d:Lcom/nianticproject/ingress/common/model/k;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/g/h;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/g/h;->g:I

    iget-object v7, p0, Lcom/nianticproject/ingress/common/ui/g/h;->e:Lcom/nianticproject/ingress/shared/n;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/ui/g/i;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ILcom/nianticproject/ingress/shared/n;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/common/ui/g/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/h;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/ui/g/b;-><init>(Lcom/nianticproject/ingress/common/ui/g/h;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    goto :goto_0
.end method

.method final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/g/h;->g:I

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/g/a;->a(I)V

    .line 97
    :cond_0
    return-void
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/g/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/g/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/g/a;->d()V

    .line 103
    :cond_0
    return-void
.end method

.method final e()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/g/h;->reset()V

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/g/a;->c()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/h;->f:Lcom/nianticproject/ingress/common/ui/g/a;

    .line 115
    :cond_0
    return-void
.end method
