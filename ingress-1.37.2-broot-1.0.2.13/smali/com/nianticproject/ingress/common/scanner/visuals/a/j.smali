.class final enum Lcom/nianticproject/ingress/common/scanner/visuals/a/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/scanner/visuals/a/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

.field public static final enum b:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

.field public static final enum c:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

.field public static final enum d:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

.field private static final synthetic f:[Lcom/nianticproject/ingress/common/scanner/visuals/a/j;


# instance fields
.field public final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 62
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    const-string/jumbo v1, "POPUP"

    const v2, 0x3ecccccd

    invoke-direct {v0, v1, v4, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->a:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    .line 63
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    const-string/jumbo v1, "SPIN"

    invoke-direct {v0, v1, v5, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    .line 64
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v6, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->c:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    .line 65
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    const-string/jumbo v1, "EXPLODE"

    const/high16 v2, 0x4000

    invoke-direct {v0, v1, v7, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->d:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->a:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->c:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->d:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->f:[Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->e:F

    .line 71
    return-void
.end method

.method public static a()F
    .locals 5

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 79
    iget v4, v4, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->e:F

    add-float/2addr v1, v4

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/visuals/a/j;
    .locals 1
    .parameter

    .prologue
    .line 60
    const-class v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/scanner/visuals/a/j;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->f:[Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/shared/af;)Lcom/nianticproject/ingress/common/c/bn;
    .locals 4
    .parameter

    .prologue
    .line 105
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/i;->b:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->m:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/i;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 129
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->s:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_1
    new-instance v1, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/c/bo;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_1
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->p:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :pswitch_2
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->o:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :pswitch_3
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->q:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :pswitch_4
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->r:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    :pswitch_5
    new-instance v0, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nianticproject/ingress/common/c/ba;

    const/4 v2, 0x0

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->n:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a([Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->e()Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 109
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final b()F
    .locals 3

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->ordinal()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 92
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    move-result-object v2

    aget-object v2, v2, v0

    iget v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->e:F

    add-float/2addr v1, v2

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return v1
.end method
