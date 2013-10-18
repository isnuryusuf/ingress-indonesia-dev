.class public final Lcom/nianticproject/ingress/common/inventory/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/inventory/ui/aw;
.implements Lcom/nianticproject/ingress/common/inventory/ui/bb;
.implements Lcom/nianticproject/ingress/common/inventory/ui/bf;
.implements Lcom/nianticproject/ingress/common/inventory/ui/d;
.implements Lcom/nianticproject/ingress/common/inventory/ui/i;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/h/l;

.field private final b:Lcom/nianticproject/ingress/common/ui/t;

.field private final c:Lcom/nianticproject/ingress/common/ac;

.field private final d:Lcom/nianticproject/ingress/common/model/k;

.field private final e:Lcom/nianticproject/ingress/common/r;

.field private f:Lcom/nianticproject/ingress/common/x/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/nianticproject/ingress/common/inventory/ui/ao;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/r;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->f:Lcom/nianticproject/ingress/common/x/g;

    .line 45
    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->g:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->h:Z

    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/g;->a:Lcom/nianticproject/ingress/common/h/l;

    .line 52
    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    .line 53
    iput-object p3, p0, Lcom/nianticproject/ingress/common/inventory/g;->c:Lcom/nianticproject/ingress/common/ac;

    .line 54
    iput-object p4, p0, Lcom/nianticproject/ingress/common/inventory/g;->d:Lcom/nianticproject/ingress/common/model/k;

    .line 55
    iput-object p5, p0, Lcom/nianticproject/ingress/common/inventory/g;->e:Lcom/nianticproject/ingress/common/r;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/g;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/inventory/g;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->h:Z

    .line 130
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/inventory/ui/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/g;->g:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    .line 126
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/g;->f:Lcom/nianticproject/ingress/common/x/g;

    .line 93
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->a:Lcom/nianticproject/ingress/common/h/l;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/h/l;->b(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->a(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->r()V

    .line 63
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 5
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->a:Lcom/nianticproject/ingress/common/h/l;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/g;->f:Lcom/nianticproject/ingress/common/x/g;

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/x/g;)V

    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->g:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->g:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->b()V

    .line 72
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/inventory/h;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/inventory/h;-><init>(Lcom/nianticproject/ingress/common/inventory/g;)V

    const-wide/16 v2, 0x4b0

    invoke-static {}, La;->t()Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v2, 0x0

    :cond_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;J)V

    .line 88
    return-void
.end method

.method public final c(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/PowerCube;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 99
    new-instance v1, Lcom/nianticproject/ingress/common/ui/c/a;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    const-class v2, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/t;->a(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/g;->a:Lcom/nianticproject/ingress/common/h/l;

    invoke-direct {v1, p1, v0, v2}, Lcom/nianticproject/ingress/common/ui/c/a;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;)V

    .line 100
    return-void
.end method

.method public final d(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->c:Lcom/nianticproject/ingress/common/ac;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ac;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 105
    return-void
.end method

.method public final e(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->a(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 111
    return-void
.end method

.method public final f(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 7
    .parameter

    .prologue
    .line 116
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->a(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/scanner/k;

    .line 120
    iget-object v6, p0, Lcom/nianticproject/ingress/common/inventory/g;->b:Lcom/nianticproject/ingress/common/ui/t;

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/b;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/g;->e:Lcom/nianticproject/ingress/common/r;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/g;->a:Lcom/nianticproject/ingress/common/h/l;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/g;->d:Lcom/nianticproject/ingress/common/model/k;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/b;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;)V

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/ui/t;->b(Lcom/nianticproject/ingress/common/ui/m;)Lcom/nianticproject/ingress/common/ui/m;

    .line 122
    return-void
.end method
