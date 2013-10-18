.class final Lcom/nianticproject/ingress/common/scanner/fd;
.super Lcom/nianticproject/ingress/common/scanner/fe;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/ez;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/ez;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/fd;->a:Lcom/nianticproject/ingress/common/scanner/ez;

    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/fe;-><init>(Lcom/nianticproject/ingress/common/scanner/ez;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/fe;->a()V

    .line 141
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fd;->a:Lcom/nianticproject/ingress/common/scanner/ez;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/ez;->a(Lcom/nianticproject/ingress/common/scanner/ez;)V

    .line 142
    return-void
.end method
