.class final Lcom/google/analytics/tracking/android/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/t;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/t;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/analytics/tracking/android/v;->a:Lcom/google/analytics/tracking/android/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->a:Lcom/google/analytics/tracking/android/t;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/t;->a(Lcom/google/analytics/tracking/android/t;)V

    .line 199
    return-void
.end method
