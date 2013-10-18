.class public final enum Lcom/nianticproject/ingress/shared/ah;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/ah;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/ah;

.field public static final enum b:Lcom/nianticproject/ingress/shared/ah;

.field public static final enum c:Lcom/nianticproject/ingress/shared/ah;

.field private static final synthetic d:[Lcom/nianticproject/ingress/shared/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/nianticproject/ingress/shared/ah;

    const-string/jumbo v1, "DEVELOPMENT"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    .line 33
    new-instance v0, Lcom/nianticproject/ingress/shared/ah;

    const-string/jumbo v1, "BETASPIKE"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/ah;->b:Lcom/nianticproject/ingress/shared/ah;

    .line 34
    new-instance v0, Lcom/nianticproject/ingress/shared/ah;

    const-string/jumbo v1, "PRODUCTION"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/ah;->c:Lcom/nianticproject/ingress/shared/ah;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/ah;

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->b:Lcom/nianticproject/ingress/shared/ah;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->c:Lcom/nianticproject/ingress/shared/ah;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/shared/ah;->d:[Lcom/nianticproject/ingress/shared/ah;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/ah;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/nianticproject/ingress/shared/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ah;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/ah;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nianticproject/ingress/shared/ah;->d:[Lcom/nianticproject/ingress/shared/ah;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/ah;

    return-object v0
.end method
