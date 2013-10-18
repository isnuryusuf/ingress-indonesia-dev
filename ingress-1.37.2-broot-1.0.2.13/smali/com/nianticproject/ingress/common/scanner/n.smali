.class final Lcom/nianticproject/ingress/common/scanner/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/f/d;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 0
    .parameter

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/n;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/n;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->d(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/ez;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/n;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/k;->t(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/ui/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/f/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ez;->a(Ljava/util/List;)V

    .line 1608
    return-void
.end method
