.class final Lcom/nianticproject/ingress/common/g/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/ad;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/g/p;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/g/p;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/r;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/r;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/p;->b(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/k/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/s;->i()V

    .line 650
    return-void
.end method
