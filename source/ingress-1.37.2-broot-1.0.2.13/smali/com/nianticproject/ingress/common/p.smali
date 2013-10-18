.class public final enum Lcom/nianticproject/ingress/common/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/p;

.field public static final enum b:Lcom/nianticproject/ingress/common/p;

.field private static final synthetic c:[Lcom/nianticproject/ingress/common/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/nianticproject/ingress/common/p;

    const-string/jumbo v1, "OPT_INTO_PROMOTIONAL_EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/p;->a:Lcom/nianticproject/ingress/common/p;

    .line 23
    new-instance v0, Lcom/nianticproject/ingress/common/p;

    const-string/jumbo v1, "OPT_OUT_OF_PROMOTIONAL_EMAIL"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/p;->b:Lcom/nianticproject/ingress/common/p;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nianticproject/ingress/common/p;

    sget-object v1, Lcom/nianticproject/ingress/common/p;->a:Lcom/nianticproject/ingress/common/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/p;->b:Lcom/nianticproject/ingress/common/p;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nianticproject/ingress/common/p;->c:[Lcom/nianticproject/ingress/common/p;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/p;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/nianticproject/ingress/common/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/p;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/p;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nianticproject/ingress/common/p;->c:[Lcom/nianticproject/ingress/common/p;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/p;

    return-object v0
.end method
