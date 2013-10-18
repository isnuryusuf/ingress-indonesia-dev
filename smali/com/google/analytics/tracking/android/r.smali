.class final Lcom/google/analytics/tracking/android/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/i;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/q;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/q;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/analytics/tracking/android/r;->a:Lcom/google/analytics/tracking/android/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/analytics/tracking/android/r;->a:Lcom/google/analytics/tracking/android/q;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/r;->a:Lcom/google/analytics/tracking/android/q;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/q;->a(Lcom/google/analytics/tracking/android/q;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/analytics/tracking/android/q;->a(ZZ)V

    .line 58
    return-void
.end method
