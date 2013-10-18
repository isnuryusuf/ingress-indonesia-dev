.class Lcom/nianticproject/ingress/common/scanner/fe;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/ez;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/ez;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/fe;->b:Lcom/nianticproject/ingress/common/scanner/ez;

    .line 94
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fe;->b:Lcom/nianticproject/ingress/common/scanner/ez;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/ez;->a(Lcom/nianticproject/ingress/common/scanner/ez;J)J

    .line 100
    return-void
.end method
