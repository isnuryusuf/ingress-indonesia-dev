.class final Lcom/google/a/e/aq;
.super Lcom/google/a/e/g;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 71
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/a/e/g;-><init>(I)V

    .line 72
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/a/e/aq;->a:J

    .line 73
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/e/aq;->c:I

    .line 75
    return-void
.end method

.method private static a(J)J
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x21

    .line 164
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    .line 165
    const-wide v2, -0xae502812aa7333L

    mul-long/2addr v0, v2

    .line 166
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 167
    const-wide v2, -0x3b314601e57a13adL

    mul-long/2addr v0, v2

    .line 168
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 169
    return-wide v0
.end method

.method private static b(J)J
    .locals 4
    .parameter

    .prologue
    .line 173
    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr v0, p0

    .line 174
    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 175
    const-wide v2, 0x4cf5ad432745937fL

    mul-long/2addr v0, v2

    .line 176
    return-wide v0
.end method

.method private static c(J)J
    .locals 4
    .parameter

    .prologue
    .line 180
    const-wide v0, 0x4cf5ad432745937fL

    mul-long/2addr v0, p0

    .line 181
    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 182
    const-wide v2, -0x783c846eeebdac2bL

    mul-long/2addr v0, v2

    .line 183
    return-wide v0
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x5

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 80
    iget-wide v4, p0, Lcom/google/a/e/aq;->a:J

    invoke-static {v0, v1}, Lcom/google/a/e/aq;->b(J)J

    move-result-wide v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/a/e/aq;->a:J

    iget-wide v0, p0, Lcom/google/a/e/aq;->a:J

    const/16 v4, 0x1b

    invoke-static {v0, v1, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/a/e/aq;->a:J

    iget-wide v0, p0, Lcom/google/a/e/aq;->a:J

    iget-wide v4, p0, Lcom/google/a/e/aq;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/a/e/aq;->a:J

    iget-wide v0, p0, Lcom/google/a/e/aq;->a:J

    mul-long/2addr v0, v6

    const-wide/32 v4, 0x52dce729

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/a/e/aq;->a:J

    iget-wide v0, p0, Lcom/google/a/e/aq;->b:J

    invoke-static {v2, v3}, Lcom/google/a/e/aq;->c(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    iget-wide v0, p0, Lcom/google/a/e/aq;->b:J

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    iget-wide v0, p0, Lcom/google/a/e/aq;->b:J

    iget-wide v2, p0, Lcom/google/a/e/aq;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    iget-wide v0, p0, Lcom/google/a/e/aq;->b:J

    mul-long/2addr v0, v6

    const-wide/32 v2, 0x38495ab5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    .line 81
    iget v0, p0, Lcom/google/a/e/aq;->c:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/a/e/aq;->c:I

    .line 82
    return-void
.end method

.method public final b()Lcom/google/a/e/u;
    .locals 4

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/google/a/e/aq;->a:J

    iget v2, p0, Lcom/google/a/e/aq;->c:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->a:J

    .line 144
    iget-wide v0, p0, Lcom/google/a/e/aq;->b:J

    iget v2, p0, Lcom/google/a/e/aq;->c:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    .line 146
    iget-wide v0, p0, Lcom/google/a/e/aq;->a:J

    iget-wide v2, p0, Lcom/google/a/e/aq;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->a:J

    .line 147
    iget-wide v0, p0, Lcom/google/a/e/aq;->b:J

    iget-wide v2, p0, Lcom/google/a/e/aq;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    .line 149
    iget-wide v0, p0, Lcom/google/a/e/aq;->a:J

    invoke-static {v0, v1}, Lcom/google/a/e/aq;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/a/e/aq;->a:J

    .line 150
    iget-wide v0, p0, Lcom/google/a/e/aq;->b:J

    invoke-static {v0, v1}, Lcom/google/a/e/aq;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    .line 152
    iget-wide v0, p0, Lcom/google/a/e/aq;->a:J

    iget-wide v2, p0, Lcom/google/a/e/aq;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->a:J

    .line 153
    iget-wide v0, p0, Lcom/google/a/e/aq;->b:J

    iget-wide v2, p0, Lcom/google/a/e/aq;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    .line 155
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/e/aq;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/e/aq;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/e/v;->b([B)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 13
    .parameter

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v7, 0x8

    const-wide/16 v2, 0x0

    .line 99
    .line 101
    iget v0, p0, Lcom/google/a/e/aq;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/e/aq;->c:I

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Should never get here."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 104
    :pswitch_0
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    .line 106
    :goto_0
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    .line 108
    :goto_1
    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    .line 110
    :goto_2
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long/2addr v0, v4

    .line 112
    :goto_3
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long/2addr v0, v4

    .line 114
    :goto_4
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    xor-long/2addr v0, v4

    .line 116
    :goto_5
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    xor-long/2addr v0, v4

    .line 118
    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    xor-long/2addr v2, v4

    .line 138
    :goto_7
    iget-wide v4, p0, Lcom/google/a/e/aq;->a:J

    invoke-static {v2, v3}, Lcom/google/a/e/aq;->b(J)J

    move-result-wide v2

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/a/e/aq;->a:J

    .line 139
    iget-wide v2, p0, Lcom/google/a/e/aq;->b:J

    invoke-static {v0, v1}, Lcom/google/a/e/aq;->c(J)J

    move-result-wide v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/e/aq;->b:J

    .line 140
    return-void

    .line 121
    :pswitch_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    .line 123
    :goto_8
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    .line 125
    :goto_9
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    .line 127
    :goto_a
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long/2addr v0, v4

    .line 129
    :goto_b
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long/2addr v0, v4

    .line 131
    :goto_c
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    xor-long/2addr v0, v4

    .line 133
    :goto_d
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    xor-long/2addr v0, v4

    move-wide v11, v2

    move-wide v2, v0

    move-wide v0, v11

    .line 134
    goto :goto_7

    :pswitch_2
    move-wide v0, v2

    goto/16 :goto_0

    :pswitch_3
    move-wide v0, v2

    goto/16 :goto_1

    :pswitch_4
    move-wide v0, v2

    goto/16 :goto_2

    :pswitch_5
    move-wide v0, v2

    goto/16 :goto_3

    :pswitch_6
    move-wide v0, v2

    goto/16 :goto_4

    :pswitch_7
    move-wide v0, v2

    goto :goto_5

    :pswitch_8
    move-wide v0, v2

    goto :goto_6

    :pswitch_9
    move-wide v0, v2

    goto :goto_8

    :pswitch_a
    move-wide v0, v2

    goto :goto_9

    :pswitch_b
    move-wide v0, v2

    goto :goto_a

    :pswitch_c
    move-wide v0, v2

    goto :goto_b

    :pswitch_d
    move-wide v0, v2

    goto :goto_c

    :pswitch_e
    move-wide v0, v2

    goto :goto_d

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
