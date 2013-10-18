.class public final Lcom/nianticproject/ingress/common/x/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/x/p;->a:J

    .line 14
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/x/p;->a:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
