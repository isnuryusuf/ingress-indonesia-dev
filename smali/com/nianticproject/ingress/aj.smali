.class final enum Lcom/nianticproject/ingress/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/aj;

.field private static final synthetic b:[Lcom/nianticproject/ingress/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/nianticproject/ingress/aj;

    const-string/jumbo v1, "CREATE_NEW_FILE_FOR_CAMERA"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/aj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/aj;->a:Lcom/nianticproject/ingress/aj;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nianticproject/ingress/aj;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/aj;->a:Lcom/nianticproject/ingress/aj;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/aj;->b:[Lcom/nianticproject/ingress/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/aj;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/nianticproject/ingress/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/aj;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/aj;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/nianticproject/ingress/aj;->b:[Lcom/nianticproject/ingress/aj;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/aj;

    return-object v0
.end method
