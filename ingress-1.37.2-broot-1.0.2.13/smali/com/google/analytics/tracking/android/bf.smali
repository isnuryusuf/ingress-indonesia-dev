.class public final Lcom/google/analytics/tracking/android/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/DecimalFormat;


# instance fields
.field private final b:Lcom/google/analytics/tracking/android/bh;

.field private final c:Lcom/google/analytics/tracking/android/bg;

.field private volatile d:Z

.field private volatile e:Z

.field private f:J

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.######"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/analytics/tracking/android/bf;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/bf;->d:Z

    .line 36
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/bf;->e:Z

    .line 44
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/bf;->f:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/bf;->h:Z

    .line 49
    iput-object v2, p0, Lcom/google/analytics/tracking/android/bf;->b:Lcom/google/analytics/tracking/android/bh;

    .line 50
    iput-object v2, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/bh;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/bf;->d:Z

    .line 36
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/bf;->e:Z

    .line 44
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/bf;->f:J

    .line 46
    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/bf;->h:Z

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/google/analytics/tracking/android/bf;->b:Lcom/google/analytics/tracking/android/bh;

    .line 58
    new-instance v0, Lcom/google/analytics/tracking/android/bg;

    invoke-direct {v0, v2}, Lcom/google/analytics/tracking/android/bg;-><init>(B)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    .line 60
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "trackingId"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "sampleRate"

    const-string/jumbo v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "sessionControl"

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "useSecure"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 375
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/bf;->e:Z

    .line 376
    if-nez p2, :cond_0

    .line 377
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 379
    :cond_0
    const-string/jumbo v0, "hitType"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Map;Ljava/lang/Boolean;)V

    .line 381
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/bf;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    const-string/jumbo v0, "Too many hits sent too quickly, throttling invoked."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->g(Ljava/lang/String;)I

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/bg;->a()V

    .line 387
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->b:Lcom/google/analytics/tracking/android/bh;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/bg;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bh;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/bf;->d:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tracker closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method private declared-synchronized e()Z
    .locals 11

    .prologue
    const-wide/32 v5, 0x1d4c0

    const-wide/16 v9, 0x7d0

    const/4 v0, 0x1

    .line 766
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/bf;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 782
    :goto_0
    monitor-exit p0

    return v0

    .line 769
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 770
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/bf;->f:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 771
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/bf;->g:J

    sub-long v3, v1, v3

    .line 772
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 773
    const-wide/32 v5, 0x1d4c0

    iget-wide v7, p0, Lcom/google/analytics/tracking/android/bf;->f:J

    add-long/2addr v3, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/analytics/tracking/android/bf;->f:J

    .line 776
    :cond_1
    iput-wide v1, p0, Lcom/google/analytics/tracking/android/bf;->g:J

    .line 777
    iget-wide v1, p0, Lcom/google/analytics/tracking/android/bf;->f:J

    cmp-long v1, v1, v9

    if-ltz v1, :cond_2

    .line 778
    iget-wide v1, p0, Lcom/google/analytics/tracking/android/bf;->f:J

    sub-long/2addr v1, v9

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/bf;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 781
    :cond_2
    :try_start_2
    const-string/jumbo v0, "Excessive tracking detected.  Tracking call ignored."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->g(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/bf;->d()V

    .line 100
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->m:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 101
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "sessionControl"

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 583
    if-gtz p1, :cond_0

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "index must be > 0, ignoring setCustomDimension call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->f(Ljava/lang/String;)I

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "customDimension"

    invoke-static {v1, p1}, Lcom/google/analytics/tracking/android/bi;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/bf;->e:Z

    if-eqz v0, :cond_0

    .line 113
    const-string/jumbo v0, "Tracking already started, setAppName call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->g(Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string/jumbo v0, "setting appName to empty value not allowed, call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->g(Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->o:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 121
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "appName"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/bf;->d()V

    .line 323
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->h:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 324
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Z)V

    .line 325
    const-string/jumbo v0, "timing"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "timingCategory"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "timingValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "timingVar"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "timingLabel"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/ai;->J:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Z)V

    .line 328
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/bf;->d()V

    .line 214
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->c:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 215
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Z)V

    .line 216
    const-string/jumbo v0, "event"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "eventCategory"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "eventAction"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "eventLabel"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const-string/jumbo v2, "eventValue"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/ai;->Y:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Z)V

    .line 218
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 455
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->w:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 456
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "sampleRate"

    const-wide/high16 v2, 0x4059

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/bf;->e:Z

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "Tracking already started, setAppVersion call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->g(Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->q:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 138
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "appVersion"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 474
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->y:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 475
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "useSecure"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/bf;->d()V

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "trackView requires a appScreen to be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/ah;->a()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ai;->b:Lcom/google/analytics/tracking/android/ai;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->a(Lcom/google/analytics/tracking/android/ai;)V

    .line 191
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bf;->c:Lcom/google/analytics/tracking/android/bg;

    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v0, "appview"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    return-void
.end method
