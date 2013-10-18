.class final Lcom/google/analytics/tracking/android/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/l;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/ax;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ay;->a:Lcom/google/analytics/tracking/android/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
