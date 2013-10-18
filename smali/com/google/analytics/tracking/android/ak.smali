.class final Lcom/google/analytics/tracking/android/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/am;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/aj;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ak;->a:Lcom/google/analytics/tracking/android/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ak;->a:Lcom/google/analytics/tracking/android/aj;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/aj;->a(Lcom/google/analytics/tracking/android/aj;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 71
    return-void
.end method
