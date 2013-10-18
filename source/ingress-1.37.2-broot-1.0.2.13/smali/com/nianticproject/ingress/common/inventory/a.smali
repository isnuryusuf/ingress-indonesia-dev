.class public Lcom/nianticproject/ingress/common/inventory/a;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field private final b:Lcom/nianticproject/ingress/common/g/e;

.field private final c:Lcom/nianticproject/ingress/common/ab;

.field private final d:Lcom/nianticproject/ingress/common/inventory/ui/v;

.field private final e:Lcom/nianticproject/ingress/common/g/g;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/inventory/ui/ac;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const-string/jumbo v0, "InventoryGl"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/a;->b:Lcom/nianticproject/ingress/common/g/e;

    .line 44
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/v;

    move-object v1, p4

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/inventory/ui/v;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/inventory/ui/ac;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/h/l;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    .line 45
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/b;

    invoke-direct {v0, p0, p1, p4}, Lcom/nianticproject/ingress/common/inventory/b;-><init>(Lcom/nianticproject/ingress/common/inventory/a;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;)V

    .line 66
    new-instance v1, Lcom/nianticproject/ingress/common/inventory/d;

    invoke-direct {v1, p0, v0}, Lcom/nianticproject/ingress/common/inventory/d;-><init>(Lcom/nianticproject/ingress/common/inventory/a;Lcom/nianticproject/ingress/common/g/d;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/inventory/a;->e:Lcom/nianticproject/ingress/common/g/g;

    .line 73
    new-instance v1, Lcom/nianticproject/ingress/common/ab;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/ab;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/inventory/a;->c:Lcom/nianticproject/ingress/common/ab;

    .line 74
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/a;->c:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->c:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ab;->c()V

    .line 77
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/inventory/a;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/a;)Lcom/nianticproject/ingress/common/inventory/ui/v;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->e:Lcom/nianticproject/ingress/common/g/g;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/g;->a()V

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->b:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/a;->e:Lcom/nianticproject/ingress/common/g/g;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/common/g/g;)V

    .line 85
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glClearColor(FFFF)V

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-static {}, Lcom/nianticproject/ingress/common/inventory/ui/v;->f()V

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->e()V

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/v;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/v;->b(F)V

    .line 93
    return-void
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a()V

    .line 108
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "InventoryGl"

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->b:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/a;->e:Lcom/nianticproject/ingress/common/g/g;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->b(Lcom/nianticproject/ingress/common/g/g;)V

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->a:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->d()V

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/a;->d:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/v;->g()V

    .line 102
    return-void
.end method
