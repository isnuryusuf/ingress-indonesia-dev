.class final Lcom/google/analytics/tracking/android/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/ap;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/ax;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/analytics/tracking/android/az;->a:Lcom/google/analytics/tracking/android/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method
