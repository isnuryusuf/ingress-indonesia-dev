.class public Lcom/nianticproject/ingress/common/x/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private b:Lcom/nianticproject/ingress/common/x/j;

.field private c:J

.field private d:J

.field private e:J

.field private f:Lcom/nianticproject/ingress/common/x/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/x/n;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/x/n;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x49742400

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    if-eqz v0, :cond_1

    .line 103
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->d:J

    const-wide/32 v2, -0x4c4b40

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 104
    sget-object v0, Lcom/nianticproject/ingress/common/x/n;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Game work Q over budget by %f ms. Last task (%s) used %f ms."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/nianticproject/ingress/common/x/n;->d:J

    neg-long v3, v3

    long-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/x/j;->a:Lcom/nianticproject/ingress/common/x/f;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/x/f;->n_()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    iget-wide v3, v3, Lcom/nianticproject/ingress/common/x/j;->c:J

    long-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->d:J

    iget-object v2, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    iget-wide v2, v2, Lcom/nianticproject/ingress/common/x/j;->b:J

    sub-long/2addr v0, v2

    .line 113
    const-wide/32 v2, 0x1dcd6500

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 114
    sget-object v2, Lcom/nianticproject/ingress/common/x/n;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Really old task: %s was queued %f ms ago."

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    iget-object v5, v5, Lcom/nianticproject/ingress/common/x/j;->a:Lcom/nianticproject/ingress/common/x/f;

    invoke-interface {v5}, Lcom/nianticproject/ingress/common/x/f;->n_()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    long-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/n;->f:Lcom/nianticproject/ingress/common/x/j;

    if-eqz v0, :cond_2

    .line 122
    sget-object v0, Lcom/nianticproject/ingress/common/x/n;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Really expensive task: %s used %f ms."

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/x/n;->f:Lcom/nianticproject/ingress/common/x/j;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/x/j;->a:Lcom/nianticproject/ingress/common/x/f;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/x/f;->n_()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/nianticproject/ingress/common/x/n;->f:Lcom/nianticproject/ingress/common/x/j;

    iget-wide v3, v3, Lcom/nianticproject/ingress/common/x/j;->c:J

    long-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_2
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->c:J

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/x/n;->d:J

    sub-long/2addr v0, v2

    .line 129
    const-wide/32 v2, 0x5f5e100

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 130
    sget-object v2, Lcom/nianticproject/ingress/common/x/n;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Really long workqueue processing time: %f ms."

    new-array v4, v8, [Ljava/lang/Object;

    long-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_3
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/x/j;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0xa

    .line 82
    iput-object p1, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    .line 83
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 84
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->e:J

    iget-object v2, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    iget-wide v2, v2, Lcom/nianticproject/ingress/common/x/j;->c:J

    const-wide/16 v4, 0x9

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    div-long/2addr v0, v6

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->e:J

    .line 90
    :goto_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->e:J

    mul-long/2addr v0, v6

    iget-object v2, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    iget-wide v2, v2, Lcom/nianticproject/ingress/common/x/j;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/nianticproject/ingress/common/x/n;->f:Lcom/nianticproject/ingress/common/x/j;

    .line 94
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    iget-wide v0, v0, Lcom/nianticproject/ingress/common/x/j;->c:J

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->e:J

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/x/p;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 66
    iput-object v2, p0, Lcom/nianticproject/ingress/common/x/n;->b:Lcom/nianticproject/ingress/common/x/j;

    .line 67
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/x/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->c:J

    .line 68
    iput-object v2, p0, Lcom/nianticproject/ingress/common/x/n;->f:Lcom/nianticproject/ingress/common/x/j;

    .line 69
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/x/p;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/x/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/x/n;->d:J

    .line 76
    return-void
.end method
