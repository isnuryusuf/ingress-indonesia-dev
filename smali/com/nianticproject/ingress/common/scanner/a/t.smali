.class final Lcom/nianticproject/ingress/common/scanner/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/a/x;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/scanner/a/n;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/t;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/q/a/q;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/t;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/m;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/q/a/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/t;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Ljava/util/List;)V

    .line 65
    return-void
.end method

.method public final b()Lcom/nianticproject/ingress/common/q/a/d;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/t;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/c;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V

    return-object v0
.end method

.method public final c()Lcom/nianticproject/ingress/common/q/a/e;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/t;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/e;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V

    return-object v0
.end method

.method public final d()Lcom/nianticproject/ingress/common/q/a/m;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/t;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/h;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V

    return-object v0
.end method

.method public final e()Lcom/nianticproject/ingress/common/q/a/l;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/j;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/t;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/j;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V

    return-object v0
.end method
