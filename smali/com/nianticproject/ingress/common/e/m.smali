.class public final Lcom/nianticproject/ingress/common/e/m;
.super Lcom/nianticproject/ingress/common/e/a;
.source "SourceFile"


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/u/q;

.field private final c:Lcom/nianticproject/ingress/common/a;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p3}, Lcom/nianticproject/ingress/common/e/a;-><init>(Lcom/nianticproject/ingress/common/model/k;)V

    .line 30
    iput-object p1, p0, Lcom/nianticproject/ingress/common/e/m;->b:Lcom/nianticproject/ingress/common/u/q;

    .line 31
    iput-object p2, p0, Lcom/nianticproject/ingress/common/e/m;->c:Lcom/nianticproject/ingress/common/a;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/e/m;)Lcom/nianticproject/ingress/common/u/q;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/m;->b:Lcom/nianticproject/ingress/common/u/q;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/e/m;)Lcom/nianticproject/ingress/common/a;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/m;->c:Lcom/nianticproject/ingress/common/a;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 102
    new-instance v0, Lcom/nianticproject/ingress/common/e/p;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/e/p;-><init>(Lcom/nianticproject/ingress/common/e/m;I)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/e/p;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 128
    return-void
.end method

.method protected final a(Ljava/util/Map;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/nianticproject/ingress/common/h/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/e/m;->b:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/e/m;->c:Lcom/nianticproject/ingress/common/a;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/nianticproject/ingress/common/h/a;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Ljava/util/Map;I)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/h/a;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 40
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/nianticproject/ingress/common/e/n;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/e/n;-><init>(Lcom/nianticproject/ingress/common/e/m;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/e/n;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 69
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/e/o;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/e/o;-><init>(Lcom/nianticproject/ingress/common/e/m;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/e/o;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 98
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "RemoteCheats"

    return-object v0
.end method
