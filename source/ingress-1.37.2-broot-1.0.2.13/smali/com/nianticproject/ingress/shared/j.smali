.class final Lcom/nianticproject/ingress/shared/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Random;

.field private b:J

.field private c:Z

.field private final d:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/j;->a:Ljava/util/Random;

    .line 67
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/j;->b:J

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/j;->c:Z

    .line 69
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/j;->d:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/nianticproject/ingress/shared/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/j;->c:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/j;->c:Z

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/j;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/j;->b:J

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/j;->b:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/j;->b:J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/j;->b:J

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/j;->c:Z

    .line 86
    return-void
.end method
