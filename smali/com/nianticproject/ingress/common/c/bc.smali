.class final Lcom/nianticproject/ingress/common/c/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/w/s;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/bb;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/bc;->a:Lcom/nianticproject/ingress/common/c/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
