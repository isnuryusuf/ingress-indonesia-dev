.class final Lcom/nianticproject/ingress/common/scanner/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/visuals/bn;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/v;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/v;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->d(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/ez;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/ez;->a(Z)V

    .line 1023
    return-void
.end method
