.class public final Lcom/google/a/d/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/a/d/g;

.field public static final b:Lcom/google/a/d/g;

.field public static final c:Lcom/google/a/d/g;

.field public static final d:Lcom/google/a/d/g;

.field public static final e:Lcom/google/a/d/g;

.field public static final f:Lcom/google/a/d/g;

.field public static final g:Lcom/google/a/d/g;

.field public static final h:Lcom/google/a/d/g;

.field public static final i:Lcom/google/a/d/g;

.field public static final j:Lcom/google/a/d/g;

.field public static final k:Lcom/google/a/d/g;

.field public static final l:Lcom/google/a/d/g;

.field public static final m:Lcom/google/a/d/g;

.field public static final n:Lcom/google/a/d/g;

.field public static final o:Lcom/google/a/d/g;

.field public static final p:D

.field public static final q:D

.field private static final r:Lcom/google/a/d/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 79
    sget-object v0, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    sput-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    .line 91
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x2

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_0

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v4, 0x4008

    const-wide/high16 v6, 0x4008

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    :goto_0
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->a:Lcom/google/a/d/g;

    .line 98
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x2

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_3

    const-wide/high16 v0, 0x3ff0

    :goto_1
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->b:Lcom/google/a/d/g;

    .line 104
    new-instance v0, Lcom/google/a/d/g;

    const/4 v1, 0x2

    const-wide v2, 0x3fe0c152382d7365L

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v0, Lcom/google/a/d/aa;->c:Lcom/google/a/d/g;

    .line 114
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x1

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_6

    const-wide/high16 v0, 0x3fe0

    :goto_2
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->d:Lcom/google/a/d/g;

    .line 119
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x1

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_9

    const-wide/high16 v0, 0x3ff0

    :goto_3
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->e:Lcom/google/a/d/g;

    .line 125
    new-instance v0, Lcom/google/a/d/g;

    const/4 v1, 0x1

    const-wide v2, 0x3fe921fb54442d18L

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v0, Lcom/google/a/d/aa;->f:Lcom/google/a/d/g;

    .line 146
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x1

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_c

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v4, 0x4018

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    :goto_4
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->g:Lcom/google/a/d/g;

    .line 152
    new-instance v0, Lcom/google/a/d/g;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/d/aa;->e:Lcom/google/a/d/g;

    invoke-virtual {v2}, Lcom/google/a/d/g;->a()D

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v0, Lcom/google/a/d/aa;->h:Lcom/google/a/d/g;

    .line 153
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x1

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_f

    const-wide v0, 0x3fe6955665209164L

    :goto_5
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->i:Lcom/google/a/d/g;

    .line 169
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x1

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_12

    sget-wide v0, Lcom/google/a/d/f;->a:D

    const-wide/high16 v4, 0x4008

    div-double/2addr v0, v4

    :goto_6
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->j:Lcom/google/a/d/g;

    .line 174
    new-instance v0, Lcom/google/a/d/g;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/d/aa;->e:Lcom/google/a/d/g;

    invoke-virtual {v2}, Lcom/google/a/d/g;->a()D

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v0, Lcom/google/a/d/aa;->k:Lcom/google/a/d/g;

    .line 175
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x1

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_15

    const-wide v0, 0x3fe70a614b3ddb6dL

    :goto_7
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->l:Lcom/google/a/d/g;

    .line 191
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x1

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_18

    sget-wide v0, Lcom/google/a/d/f;->a:D

    const-wide/high16 v4, 0x4008

    div-double/2addr v0, v4

    :goto_8
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->m:Lcom/google/a/d/g;

    .line 197
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x1

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_1b

    sget-wide v0, Lcom/google/a/d/f;->a:D

    :goto_9
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->n:Lcom/google/a/d/g;

    .line 203
    new-instance v2, Lcom/google/a/d/g;

    const/4 v3, 0x1

    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_1e

    const-wide v0, 0x3ff04129b9bd9410L

    :goto_a
    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/d/g;-><init>(ID)V

    sput-object v2, Lcom/google/a/d/aa;->o:Lcom/google/a/d/g;

    .line 213
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->a:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_21

    sget-wide v0, Lcom/google/a/d/f;->a:D

    :goto_b
    sput-wide v0, Lcom/google/a/d/aa;->p:D

    .line 222
    const-wide/high16 v0, 0x4008

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/a/d/aa;->q:D

    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_1

    const-wide v0, 0x4023bd3cc9be45deL

    const-wide/high16 v4, 0x4030

    sget-wide v6, Lcom/google/a/d/f;->a:D

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_2

    const-wide/high16 v0, 0x4000

    sget-wide v4, Lcom/google/a/d/f;->a:D

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4022

    div-double/2addr v0, v4

    goto/16 :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    .line 98
    :cond_3
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_4

    const-wide v0, 0x3fe3bd3cc9be45deL

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_5

    const-wide v0, 0x3fe5161debbbd2b2L

    goto/16 :goto_1

    :cond_5
    const-wide/16 v0, 0x0

    goto/16 :goto_1

    .line 114
    :cond_6
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_7

    const-wide v0, 0x3fe921fb54442d18L

    goto/16 :goto_2

    :cond_7
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_8

    const-wide v0, 0x3fe5555555555555L

    goto/16 :goto_2

    :cond_8
    const-wide/16 v0, 0x0

    goto/16 :goto_2

    .line 119
    :cond_9
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_a

    const-wide v0, 0x3fe921fb54442d18L

    goto/16 :goto_3

    :cond_a
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_b

    const-wide v0, 0x3feb474243bb40b2L

    goto/16 :goto_3

    :cond_b
    const-wide/16 v0, 0x0

    goto/16 :goto_3

    .line 146
    :cond_c
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_d

    const-wide v0, 0x400921fb54442d18L

    const-wide/high16 v4, 0x4010

    sget-wide v6, Lcom/google/a/d/f;->a:D

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    goto/16 :goto_4

    :cond_d
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_e

    sget-wide v0, Lcom/google/a/d/f;->a:D

    const-wide/high16 v4, 0x4008

    div-double/2addr v0, v4

    goto/16 :goto_4

    :cond_e
    const-wide/16 v0, 0x0

    goto/16 :goto_4

    .line 153
    :cond_f
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_10

    const-wide v0, 0x3fe6ff41d441d637L

    goto/16 :goto_5

    :cond_10
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_11

    const-wide v0, 0x3fe6f3cf18462338L

    goto/16 :goto_5

    :cond_11
    const-wide/16 v0, 0x0

    goto/16 :goto_5

    .line 169
    :cond_12
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_13

    const-wide v0, 0x400921fb54442d18L

    const-wide/high16 v4, 0x4010

    sget-wide v6, Lcom/google/a/d/f;->a:D

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    goto/16 :goto_6

    :cond_13
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_14

    sget-wide v0, Lcom/google/a/d/f;->a:D

    const-wide/high16 v4, 0x4008

    div-double/2addr v0, v4

    goto/16 :goto_6

    :cond_14
    const-wide/16 v0, 0x0

    goto/16 :goto_6

    .line 175
    :cond_15
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_16

    const-wide v0, 0x3fe762fcf866dfb2L

    goto/16 :goto_7

    :cond_16
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_17

    const-wide v0, 0x3fe758f08369a1a5L

    goto/16 :goto_7

    :cond_17
    const-wide/16 v0, 0x0

    goto/16 :goto_7

    .line 191
    :cond_18
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_19

    const-wide v0, 0x400921fb54442d18L

    const-wide/high16 v4, 0x4008

    sget-wide v6, Lcom/google/a/d/f;->a:D

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    goto/16 :goto_8

    :cond_19
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_1a

    const-wide/high16 v0, 0x4010

    sget-wide v4, Lcom/google/a/d/f;->a:D

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4022

    div-double/2addr v0, v4

    goto/16 :goto_8

    :cond_1a
    const-wide/16 v0, 0x0

    goto/16 :goto_8

    .line 197
    :cond_1b
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_1c

    const-wide v0, 0x400921fb54442d18L

    const-wide/high16 v4, 0x4018

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    goto/16 :goto_9

    :cond_1c
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_1d

    const-wide v0, 0x3ff3825d570aac93L

    goto/16 :goto_9

    :cond_1d
    const-wide/16 v0, 0x0

    goto/16 :goto_9

    .line 203
    :cond_1e
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_1f

    const-wide v0, 0x3ff0824ce0f9c718L

    goto/16 :goto_a

    :cond_1f
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_20

    const-wide v0, 0x3ff07bbeeabf7727L

    goto/16 :goto_a

    :cond_20
    const-wide/16 v0, 0x0

    goto/16 :goto_a

    .line 213
    :cond_21
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->b:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_22

    sget-wide v0, Lcom/google/a/d/f;->a:D

    goto/16 :goto_b

    :cond_22
    sget-object v0, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    sget-object v1, Lcom/google/a/d/ac;->c:Lcom/google/a/d/ac;

    if-ne v0, v1, :cond_23

    const-wide v0, 0x3ff714f3c107bfd9L

    goto/16 :goto_b

    :cond_23
    const-wide/16 v0, 0x0

    goto/16 :goto_b
.end method

.method public static strictfp a(D)D
    .locals 8
    .parameter

    .prologue
    const-wide v6, 0x3fd5555555555555L

    const-wide/high16 v4, 0x3ff0

    .line 225
    sget-object v0, Lcom/google/a/d/ab;->a:[I

    sget-object v1, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    invoke-virtual {v1}, Lcom/google/a/d/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid value for S2_PROJECTION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_0
    const-wide v0, 0x3fe921fb54442d18L

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    .line 239
    const-wide/high16 v2, 0x3ca0

    mul-double/2addr v2, v0

    add-double p0, v0, v2

    .line 244
    :goto_0
    :pswitch_1
    return-wide p0

    .line 241
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 242
    add-double v0, v4, p0

    add-double v2, v4, p0

    mul-double/2addr v0, v2

    sub-double/2addr v0, v4

    mul-double p0, v6, v0

    goto :goto_0

    .line 244
    :cond_0
    sub-double v0, v4, p0

    sub-double v2, v4, p0

    mul-double/2addr v0, v2

    sub-double v0, v4, v0

    mul-double p0, v6, v0

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static strictfp a(Lcom/google/a/d/y;)I
    .locals 5
    .parameter

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/a/d/y;->d()I

    move-result v0

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/a/d/y;->a(I)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 326
    add-int/lit8 v0, v0, 0x3

    .line 328
    :cond_0
    return v0
.end method

.method public static strictfp a(ILcom/google/a/d/y;)Lcom/google/a/d/c;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 294
    packed-switch p0, :pswitch_data_0

    .line 316
    iget-wide v0, p1, Lcom/google/a/d/y;->i:D

    neg-double v0, v0

    iget-wide v2, p1, Lcom/google/a/d/y;->j:D

    div-double v2, v0, v2

    .line 317
    iget-wide v0, p1, Lcom/google/a/d/y;->h:D

    neg-double v0, v0

    iget-wide v4, p1, Lcom/google/a/d/y;->j:D

    div-double/2addr v0, v4

    .line 320
    :goto_0
    new-instance v4, Lcom/google/a/d/c;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/a/d/c;-><init>(DD)V

    return-object v4

    .line 296
    :pswitch_0
    iget-wide v0, p1, Lcom/google/a/d/y;->i:D

    iget-wide v2, p1, Lcom/google/a/d/y;->h:D

    div-double v2, v0, v2

    .line 297
    iget-wide v0, p1, Lcom/google/a/d/y;->j:D

    iget-wide v4, p1, Lcom/google/a/d/y;->h:D

    div-double/2addr v0, v4

    .line 298
    goto :goto_0

    .line 300
    :pswitch_1
    iget-wide v0, p1, Lcom/google/a/d/y;->h:D

    neg-double v0, v0

    iget-wide v2, p1, Lcom/google/a/d/y;->i:D

    div-double v2, v0, v2

    .line 301
    iget-wide v0, p1, Lcom/google/a/d/y;->j:D

    iget-wide v4, p1, Lcom/google/a/d/y;->i:D

    div-double/2addr v0, v4

    .line 302
    goto :goto_0

    .line 304
    :pswitch_2
    iget-wide v0, p1, Lcom/google/a/d/y;->h:D

    neg-double v0, v0

    iget-wide v2, p1, Lcom/google/a/d/y;->j:D

    div-double v2, v0, v2

    .line 305
    iget-wide v0, p1, Lcom/google/a/d/y;->i:D

    neg-double v0, v0

    iget-wide v4, p1, Lcom/google/a/d/y;->j:D

    div-double/2addr v0, v4

    .line 306
    goto :goto_0

    .line 308
    :pswitch_3
    iget-wide v0, p1, Lcom/google/a/d/y;->j:D

    iget-wide v2, p1, Lcom/google/a/d/y;->h:D

    div-double v2, v0, v2

    .line 309
    iget-wide v0, p1, Lcom/google/a/d/y;->i:D

    iget-wide v4, p1, Lcom/google/a/d/y;->h:D

    div-double/2addr v0, v4

    .line 310
    goto :goto_0

    .line 312
    :pswitch_4
    iget-wide v0, p1, Lcom/google/a/d/y;->j:D

    iget-wide v2, p1, Lcom/google/a/d/y;->i:D

    div-double v2, v0, v2

    .line 313
    iget-wide v0, p1, Lcom/google/a/d/y;->h:D

    neg-double v0, v0

    iget-wide v4, p1, Lcom/google/a/d/y;->i:D

    div-double/2addr v0, v4

    .line 314
    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static strictfp a(I)Lcom/google/a/d/y;
    .locals 1
    .parameter

    .prologue
    .line 383
    packed-switch p0, :pswitch_data_0

    .line 395
    sget-object v0, Lcom/google/a/d/y;->d:Lcom/google/a/d/y;

    :goto_0
    return-object v0

    .line 385
    :pswitch_0
    sget-object v0, Lcom/google/a/d/y;->d:Lcom/google/a/d/y;

    goto :goto_0

    .line 387
    :pswitch_1
    sget-object v0, Lcom/google/a/d/y;->c:Lcom/google/a/d/y;

    goto :goto_0

    .line 389
    :pswitch_2
    sget-object v0, Lcom/google/a/d/y;->c:Lcom/google/a/d/y;

    goto :goto_0

    .line 391
    :pswitch_3
    sget-object v0, Lcom/google/a/d/y;->g:Lcom/google/a/d/y;

    goto :goto_0

    .line 393
    :pswitch_4
    sget-object v0, Lcom/google/a/d/y;->g:Lcom/google/a/d/y;

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static strictfp a(ID)Lcom/google/a/d/y;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 345
    packed-switch p0, :pswitch_data_0

    .line 357
    new-instance v0, Lcom/google/a/d/y;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, -0x4010

    neg-double v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    :goto_0
    return-object v0

    .line 347
    :pswitch_0
    new-instance v0, Lcom/google/a/d/y;

    const-wide/high16 v3, -0x4010

    const-wide/16 v5, 0x0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 349
    :pswitch_1
    new-instance v0, Lcom/google/a/d/y;

    const-wide/high16 v1, 0x3ff0

    const-wide/16 v5, 0x0

    move-wide v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 351
    :pswitch_2
    new-instance v0, Lcom/google/a/d/y;

    const-wide/high16 v1, 0x3ff0

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 353
    :pswitch_3
    new-instance v0, Lcom/google/a/d/y;

    neg-double v1, p1

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 355
    :pswitch_4
    new-instance v0, Lcom/google/a/d/y;

    const-wide/16 v1, 0x0

    neg-double v3, p1

    const-wide/high16 v5, 0x3ff0

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static strictfp a(IDD)Lcom/google/a/d/y;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v1, 0x3ff0

    const-wide/high16 v7, -0x4010

    .line 274
    packed-switch p0, :pswitch_data_0

    .line 286
    new-instance v0, Lcom/google/a/d/y;

    move-wide v1, p3

    move-wide v3, p1

    move-wide v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    :goto_0
    return-object v0

    .line 276
    :pswitch_0
    new-instance v0, Lcom/google/a/d/y;

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 278
    :pswitch_1
    new-instance v3, Lcom/google/a/d/y;

    neg-double v4, p1

    move-wide v6, v1

    move-wide v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/a/d/y;-><init>(DDD)V

    move-object v0, v3

    goto :goto_0

    .line 280
    :pswitch_2
    new-instance v3, Lcom/google/a/d/y;

    neg-double v4, p1

    neg-double v6, p3

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/a/d/y;-><init>(DDD)V

    move-object v0, v3

    goto :goto_0

    .line 282
    :pswitch_3
    new-instance v0, Lcom/google/a/d/y;

    neg-double v3, p3

    neg-double v5, p1

    move-wide v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 284
    :pswitch_4
    new-instance v0, Lcom/google/a/d/y;

    neg-double v5, p1

    move-wide v1, p3

    move-wide v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static strictfp b(D)D
    .locals 6
    .parameter

    .prologue
    const-wide/high16 v4, 0x4008

    const-wide/high16 v2, 0x3ff0

    .line 252
    sget-object v0, Lcom/google/a/d/ab;->a:[I

    sget-object v1, Lcom/google/a/d/aa;->r:Lcom/google/a/d/ac;

    invoke-virtual {v1}, Lcom/google/a/d/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid value for S2_PROJECTION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :pswitch_0
    const-wide v0, 0x3ff45f306dc9c883L

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double p0, v0, v2

    .line 261
    :goto_0
    :pswitch_1
    return-wide p0

    .line 258
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 259
    mul-double v0, v4, p0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double p0, v0, v2

    goto :goto_0

    .line 261
    :cond_0
    mul-double v0, v4, p0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double p0, v2, v0

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static strictfp b(ILcom/google/a/d/y;)Lcom/google/a/d/c;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 332
    const/4 v1, 0x3

    if-ge p0, v1, :cond_1

    .line 333
    invoke-virtual {p1, p0}, Lcom/google/a/d/y;->a(I)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_2

    .line 341
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    add-int/lit8 v1, p0, -0x3

    invoke-virtual {p1, v1}, Lcom/google/a/d/y;->a(I)D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-gez v1, :cond_0

    .line 341
    :cond_2
    invoke-static {p0, p1}, Lcom/google/a/d/aa;->a(ILcom/google/a/d/y;)Lcom/google/a/d/c;

    move-result-object v0

    goto :goto_0
.end method

.method public static strictfp b(I)Lcom/google/a/d/y;
    .locals 1
    .parameter

    .prologue
    .line 400
    packed-switch p0, :pswitch_data_0

    .line 412
    sget-object v0, Lcom/google/a/d/y;->b:Lcom/google/a/d/y;

    :goto_0
    return-object v0

    .line 402
    :pswitch_0
    sget-object v0, Lcom/google/a/d/y;->f:Lcom/google/a/d/y;

    goto :goto_0

    .line 404
    :pswitch_1
    sget-object v0, Lcom/google/a/d/y;->f:Lcom/google/a/d/y;

    goto :goto_0

    .line 406
    :pswitch_2
    sget-object v0, Lcom/google/a/d/y;->e:Lcom/google/a/d/y;

    goto :goto_0

    .line 408
    :pswitch_3
    sget-object v0, Lcom/google/a/d/y;->e:Lcom/google/a/d/y;

    goto :goto_0

    .line 410
    :pswitch_4
    sget-object v0, Lcom/google/a/d/y;->b:Lcom/google/a/d/y;

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static strictfp b(ID)Lcom/google/a/d/y;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 362
    packed-switch p0, :pswitch_data_0

    .line 374
    new-instance v0, Lcom/google/a/d/y;

    const-wide/high16 v1, 0x3ff0

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    :goto_0
    return-object v0

    .line 364
    :pswitch_0
    new-instance v0, Lcom/google/a/d/y;

    neg-double v1, p1

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 366
    :pswitch_1
    new-instance v0, Lcom/google/a/d/y;

    const-wide/16 v1, 0x0

    neg-double v3, p1

    const-wide/high16 v5, 0x3ff0

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 368
    :pswitch_2
    new-instance v0, Lcom/google/a/d/y;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, -0x4010

    neg-double v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 370
    :pswitch_3
    new-instance v0, Lcom/google/a/d/y;

    const-wide/high16 v3, -0x4010

    const-wide/16 v5, 0x0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 372
    :pswitch_4
    new-instance v0, Lcom/google/a/d/y;

    const-wide/high16 v1, 0x3ff0

    const-wide/16 v5, 0x0

    move-wide v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    goto :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
