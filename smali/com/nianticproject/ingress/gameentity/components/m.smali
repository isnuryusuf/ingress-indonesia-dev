.class public final enum Lcom/nianticproject/ingress/gameentity/components/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/gameentity/components/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum b:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum c:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum d:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum e:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum f:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum g:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum h:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum i:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum j:Lcom/nianticproject/ingress/gameentity/components/m;

.field public static final enum k:Lcom/nianticproject/ingress/gameentity/components/m;

.field private static final synthetic o:[Lcom/nianticproject/ingress/gameentity/components/m;


# instance fields
.field private final l:Ljava/lang/String;

.field private final m:Lcom/nianticproject/ingress/gameentity/components/o;

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v2, 0x0

    const v12, 0xf4240

    const/16 v11, 0x3e8

    const/4 v4, 0x1

    .line 50
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v1, "ABSORPTION"

    const-string/jumbo v3, "Absorption"

    sget-object v5, Lcom/nianticproject/ingress/gameentity/components/o;->d:Lcom/nianticproject/ingress/gameentity/components/o;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/m;->a:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 57
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "MITIGATION"

    const-string/jumbo v8, "Shielding"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->d:Lcom/nianticproject/ingress/gameentity/components/o;

    move v7, v4

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->b:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 65
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "REFLECTION"

    const-string/jumbo v8, "Reflection"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->d:Lcom/nianticproject/ingress/gameentity/components/o;

    move v7, v13

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->c:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 72
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "LINK_RANGE_MULTIPLIER"

    const/4 v7, 0x3

    const-string/jumbo v8, "Link Range Multiplier"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->a:Lcom/nianticproject/ingress/gameentity/components/o;

    move v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->d:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 81
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "REMOVAL_STICKINESS"

    const/4 v7, 0x4

    const-string/jumbo v8, "Removal Stickiness"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->b:Lcom/nianticproject/ingress/gameentity/components/o;

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->e:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 87
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "UNKNOWN"

    const/4 v7, 0x5

    const-string/jumbo v8, "Unknown"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->c:Lcom/nianticproject/ingress/gameentity/components/o;

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->f:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 94
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "HACK_SPEED"

    const/4 v7, 0x6

    const-string/jumbo v8, "Hack Speed"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->b:Lcom/nianticproject/ingress/gameentity/components/o;

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->g:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 102
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "BURNOUT_INSULATION"

    const/4 v7, 0x7

    const-string/jumbo v8, "Burnout Insulation"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->d:Lcom/nianticproject/ingress/gameentity/components/o;

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->h:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 109
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "FORCE_AMPLIFIER"

    const/16 v7, 0x8

    const-string/jumbo v8, "Force Amplifier"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->a:Lcom/nianticproject/ingress/gameentity/components/o;

    move v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->i:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 116
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "HIT_BONUS"

    const/16 v7, 0x9

    const-string/jumbo v8, "Hit Bonus"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->b:Lcom/nianticproject/ingress/gameentity/components/o;

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->j:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 123
    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/m;

    const-string/jumbo v6, "ATTACK_FREQUENCY"

    const/16 v7, 0xa

    const-string/jumbo v8, "Attack Frequency"

    sget-object v10, Lcom/nianticproject/ingress/gameentity/components/o;->a:Lcom/nianticproject/ingress/gameentity/components/o;

    move v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/nianticproject/ingress/gameentity/components/m;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V

    sput-object v5, Lcom/nianticproject/ingress/gameentity/components/m;->k:Lcom/nianticproject/ingress/gameentity/components/m;

    .line 28
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nianticproject/ingress/gameentity/components/m;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->a:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->b:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/m;->c:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v1, v0, v13

    const/4 v1, 0x3

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/m;->d:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/m;->e:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/m;->f:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/m;->g:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/m;->h:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/m;->i:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/m;->j:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/m;->k:Lcom/nianticproject/ingress/gameentity/components/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/m;->o:[Lcom/nianticproject/ingress/gameentity/components/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILcom/nianticproject/ingress/gameentity/components/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/nianticproject/ingress/gameentity/components/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput-object p3, p0, Lcom/nianticproject/ingress/gameentity/components/m;->l:Ljava/lang/String;

    .line 151
    iput-object p5, p0, Lcom/nianticproject/ingress/gameentity/components/m;->m:Lcom/nianticproject/ingress/gameentity/components/o;

    .line 152
    iput p4, p0, Lcom/nianticproject/ingress/gameentity/components/m;->n:I

    .line 153
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/m;
    .locals 1
    .parameter

    .prologue
    .line 232
    :try_start_0
    invoke-static {p0}, Lcom/nianticproject/ingress/gameentity/components/m;->valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/m;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/m;->f:Lcom/nianticproject/ingress/gameentity/components/m;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/m;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/m;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/gameentity/components/m;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/m;->o:[Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/gameentity/components/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/gameentity/components/m;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/gameentity/components/o;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/m;->m:Lcom/nianticproject/ingress/gameentity/components/o;

    return-object v0
.end method

.method public final a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    long-to-float v0, p1

    iget v2, p0, Lcom/nianticproject/ingress/gameentity/components/m;->n:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 172
    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/n;->a:[I

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/m;->m:Lcom/nianticproject/ingress/gameentity/components/o;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/gameentity/components/o;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 178
    :goto_0
    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 179
    const-string/jumbo v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/m;->m:Lcom/nianticproject/ingress/gameentity/components/o;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :pswitch_0
    const/high16 v2, 0x42c8

    mul-float/2addr v0, v2

    goto :goto_0

    .line 181
    :cond_0
    const-string/jumbo v2, "%.1f"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/m;->n:I

    return v0
.end method

.method public final b(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 189
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string/jumbo v0, ""

    .line 190
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/nianticproject/ingress/gameentity/components/m;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    const-string/jumbo v0, "+"

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/m;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/n;->b:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 207
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 205
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/n;->b:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 224
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
