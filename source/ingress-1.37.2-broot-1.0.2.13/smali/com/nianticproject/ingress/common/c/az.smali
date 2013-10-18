.class final enum Lcom/nianticproject/ingress/common/c/az;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/c/az;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/c/az;

.field public static final enum b:Lcom/nianticproject/ingress/common/c/az;

.field public static final enum c:Lcom/nianticproject/ingress/common/c/az;

.field public static final enum d:Lcom/nianticproject/ingress/common/c/az;

.field private static final synthetic e:[Lcom/nianticproject/ingress/common/c/az;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/nianticproject/ingress/common/c/az;

    const-string/jumbo v1, "AMBIENT_SCANNER"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/c/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/az;->a:Lcom/nianticproject/ingress/common/c/az;

    .line 50
    new-instance v0, Lcom/nianticproject/ingress/common/c/az;

    const-string/jumbo v1, "AMBIENT_RESISTANCE"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/c/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/az;->b:Lcom/nianticproject/ingress/common/c/az;

    .line 51
    new-instance v0, Lcom/nianticproject/ingress/common/c/az;

    const-string/jumbo v1, "AMBIENT_ALIENS"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/c/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/az;->c:Lcom/nianticproject/ingress/common/c/az;

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/common/c/az;

    const-string/jumbo v1, "AMBIENT_NEUTRAL"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/common/c/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/az;->d:Lcom/nianticproject/ingress/common/c/az;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/az;

    sget-object v1, Lcom/nianticproject/ingress/common/c/az;->a:Lcom/nianticproject/ingress/common/c/az;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/c/az;->b:Lcom/nianticproject/ingress/common/c/az;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/c/az;->c:Lcom/nianticproject/ingress/common/c/az;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/c/az;->d:Lcom/nianticproject/ingress/common/c/az;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/ingress/common/c/az;->e:[Lcom/nianticproject/ingress/common/c/az;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/common/c/az;
    .locals 2
    .parameter

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    sget-object v0, Lcom/nianticproject/ingress/common/c/az;->a:Lcom/nianticproject/ingress/common/c/az;

    .line 72
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/ay;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/az;->b:Lcom/nianticproject/ingress/common/c/az;

    goto :goto_0

    .line 67
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/c/az;->c:Lcom/nianticproject/ingress/common/c/az;

    goto :goto_0

    .line 69
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/common/c/az;->d:Lcom/nianticproject/ingress/common/c/az;

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/c/az;
    .locals 1
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/nianticproject/ingress/common/c/az;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/az;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/c/az;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/nianticproject/ingress/common/c/az;->e:[Lcom/nianticproject/ingress/common/c/az;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/c/az;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/c/az;

    return-object v0
.end method
