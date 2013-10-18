.class final Lcom/google/a/e/av;
.super Lcom/google/a/e/g;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 103
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/a/e/g;-><init>(I)V

    .line 90
    const-wide v0, 0x736f6d6570736575L

    iput-wide v0, p0, Lcom/google/a/e/av;->c:J

    .line 91
    const-wide v0, 0x646f72616e646f6dL

    iput-wide v0, p0, Lcom/google/a/e/av;->d:J

    .line 92
    const-wide v0, 0x6c7967656e657261L

    iput-wide v0, p0, Lcom/google/a/e/av;->e:J

    .line 93
    const-wide v0, 0x7465646279746573L

    iput-wide v0, p0, Lcom/google/a/e/av;->f:J

    .line 96
    iput-wide v2, p0, Lcom/google/a/e/av;->g:J

    .line 100
    iput-wide v2, p0, Lcom/google/a/e/av;->h:J

    .line 104
    iput p1, p0, Lcom/google/a/e/av;->a:I

    .line 105
    iput p2, p0, Lcom/google/a/e/av;->b:I

    .line 106
    iget-wide v0, p0, Lcom/google/a/e/av;->c:J

    xor-long/2addr v0, p3

    iput-wide v0, p0, Lcom/google/a/e/av;->c:J

    .line 107
    iget-wide v0, p0, Lcom/google/a/e/av;->d:J

    xor-long/2addr v0, p5

    iput-wide v0, p0, Lcom/google/a/e/av;->d:J

    .line 108
    iget-wide v0, p0, Lcom/google/a/e/av;->e:J

    xor-long/2addr v0, p3

    iput-wide v0, p0, Lcom/google/a/e/av;->e:J

    .line 109
    iget-wide v0, p0, Lcom/google/a/e/av;->f:J

    xor-long/2addr v0, p5

    iput-wide v0, p0, Lcom/google/a/e/av;->f:J

    .line 110
    return-void
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x20

    .line 142
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 143
    iget-wide v1, p0, Lcom/google/a/e/av;->c:J

    iget-wide v3, p0, Lcom/google/a/e/av;->d:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/e/av;->c:J

    .line 144
    iget-wide v1, p0, Lcom/google/a/e/av;->e:J

    iget-wide v3, p0, Lcom/google/a/e/av;->f:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/e/av;->e:J

    .line 145
    iget-wide v1, p0, Lcom/google/a/e/av;->d:J

    const/16 v3, 0xd

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/a/e/av;->d:J

    .line 146
    iget-wide v1, p0, Lcom/google/a/e/av;->f:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/a/e/av;->f:J

    .line 147
    iget-wide v1, p0, Lcom/google/a/e/av;->d:J

    iget-wide v3, p0, Lcom/google/a/e/av;->c:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/e/av;->d:J

    .line 148
    iget-wide v1, p0, Lcom/google/a/e/av;->f:J

    iget-wide v3, p0, Lcom/google/a/e/av;->e:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/e/av;->f:J

    .line 149
    iget-wide v1, p0, Lcom/google/a/e/av;->c:J

    invoke-static {v1, v2, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/a/e/av;->c:J

    .line 150
    iget-wide v1, p0, Lcom/google/a/e/av;->e:J

    iget-wide v3, p0, Lcom/google/a/e/av;->d:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/e/av;->e:J

    .line 151
    iget-wide v1, p0, Lcom/google/a/e/av;->c:J

    iget-wide v3, p0, Lcom/google/a/e/av;->f:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/e/av;->c:J

    .line 152
    iget-wide v1, p0, Lcom/google/a/e/av;->d:J

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/a/e/av;->d:J

    .line 153
    iget-wide v1, p0, Lcom/google/a/e/av;->f:J

    const/16 v3, 0x15

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/a/e/av;->f:J

    .line 154
    iget-wide v1, p0, Lcom/google/a/e/av;->d:J

    iget-wide v3, p0, Lcom/google/a/e/av;->e:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/e/av;->d:J

    .line 155
    iget-wide v1, p0, Lcom/google/a/e/av;->f:J

    iget-wide v3, p0, Lcom/google/a/e/av;->c:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/e/av;->f:J

    .line 156
    iget-wide v1, p0, Lcom/google/a/e/av;->e:J

    invoke-static {v1, v2, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/a/e/av;->e:J

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/google/a/e/av;->f:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/a/e/av;->f:J

    .line 137
    iget v0, p0, Lcom/google/a/e/av;->a:I

    invoke-direct {p0, v0}, Lcom/google/a/e/av;->a(I)V

    .line 138
    iget-wide v0, p0, Lcom/google/a/e/av;->c:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/a/e/av;->c:J

    .line 139
    return-void
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/a/e/av;->g:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/av;->g:J

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/a/e/av;->a(J)V

    .line 115
    return-void
.end method

.method public final b()Lcom/google/a/e/u;
    .locals 5

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/a/e/av;->h:J

    iget-wide v2, p0, Lcom/google/a/e/av;->g:J

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/av;->h:J

    .line 127
    iget-wide v0, p0, Lcom/google/a/e/av;->h:J

    invoke-direct {p0, v0, v1}, Lcom/google/a/e/av;->a(J)V

    .line 130
    iget-wide v0, p0, Lcom/google/a/e/av;->e:J

    const-wide/16 v2, 0xff

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/av;->e:J

    .line 131
    iget v0, p0, Lcom/google/a/e/av;->b:I

    invoke-direct {p0, v0}, Lcom/google/a/e/av;->a(I)V

    .line 132
    iget-wide v0, p0, Lcom/google/a/e/av;->c:J

    iget-wide v2, p0, Lcom/google/a/e/av;->d:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/e/av;->e:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/e/av;->f:J

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/a/e/v;->a(J)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/a/e/av;->g:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/av;->g:J

    .line 119
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-wide v1, p0, Lcom/google/a/e/av;->h:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    shl-long/2addr v3, v0

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/a/e/av;->h:J

    .line 119
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method
