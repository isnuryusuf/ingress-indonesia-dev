.class final Lcom/google/analytics/tracking/android/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:J

.field private final c:J

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/an;->a:Ljava/lang/String;

    .line 38
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/an;->b:J

    .line 39
    iput-wide p3, p0, Lcom/google/analytics/tracking/android/an;->c:J

    .line 40
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->a:Ljava/lang/String;

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/analytics/tracking/android/an;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method final b()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/an;->b:J

    return-wide v0
.end method

.method final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/analytics/tracking/android/an;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method final c()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/an;->c:J

    return-wide v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->d:Ljava/lang/String;

    return-object v0
.end method
