.class public final Lcom/nianticproject/ingress/common/t/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:J

.field private e:J

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/t/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nianticproject/ingress/common/t/b;->b:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/nianticproject/ingress/common/t/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/t/b;->c:I

    .line 34
    iput-wide v1, p0, Lcom/nianticproject/ingress/common/t/b;->d:J

    .line 35
    iput-wide v1, p0, Lcom/nianticproject/ingress/common/t/b;->e:J

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/t/b;->f:I

    .line 37
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/common/t/b;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/nianticproject/ingress/common/t/c;->a()Lcom/nianticproject/ingress/common/t/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/t/a;->b(Lcom/nianticproject/ingress/common/t/b;)V

    .line 66
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/nianticproject/ingress/common/t/c;->a()Lcom/nianticproject/ingress/common/t/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/a;->a()V

    .line 59
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method final a(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->d:J

    .line 102
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->e:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->e:J

    .line 103
    iget v0, p0, Lcom/nianticproject/ingress/common/t/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/t/b;->f:I

    .line 104
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/nianticproject/ingress/common/t/c;->a()Lcom/nianticproject/ingress/common/t/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/t/a;->a(Lcom/nianticproject/ingress/common/t/b;)V

    .line 52
    return-void
.end method

.method final b(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->d:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->d:J

    .line 113
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->e:J

    sub-long/2addr v0, p3

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->e:J

    .line 114
    iget v0, p0, Lcom/nianticproject/ingress/common/t/b;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/t/b;->f:I

    .line 115
    return-void
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/nianticproject/ingress/common/t/b;->g:F

    return v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/nianticproject/ingress/common/t/b;->h:F

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/nianticproject/ingress/common/t/b;->f:I

    return v0
.end method

.method public final g()V
    .locals 5

    .prologue
    const-wide/32 v3, 0xf4240

    const/high16 v1, 0x7fc0

    .line 123
    iget v0, p0, Lcom/nianticproject/ingress/common/t/b;->f:I

    if-nez v0, :cond_0

    .line 124
    iput v1, p0, Lcom/nianticproject/ingress/common/t/b;->g:F

    .line 125
    iput v1, p0, Lcom/nianticproject/ingress/common/t/b;->h:F

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->d:J

    long-to-float v0, v0

    iget v1, p0, Lcom/nianticproject/ingress/common/t/b;->f:I

    int-to-long v1, v1

    mul-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/t/b;->g:F

    .line 130
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/b;->e:J

    long-to-float v0, v0

    iget v1, p0, Lcom/nianticproject/ingress/common/t/b;->f:I

    int-to-long v1, v1

    mul-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/t/b;->h:F

    goto :goto_0
.end method
