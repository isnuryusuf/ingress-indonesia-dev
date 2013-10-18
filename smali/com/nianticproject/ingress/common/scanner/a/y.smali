.class final Lcom/nianticproject/ingress/common/scanner/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/a/y;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/a/n;

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/a/u;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/u;Lcom/nianticproject/ingress/common/scanner/a/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/y;->b:Lcom/nianticproject/ingress/common/scanner/a/u;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/a/y;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/q/a/x;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/t;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/y;->a:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/t;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;)V

    return-object v0
.end method
