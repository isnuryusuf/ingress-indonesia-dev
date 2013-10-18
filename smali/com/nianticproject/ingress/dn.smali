.class final enum Lcom/nianticproject/ingress/dn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/dn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/dn;

.field public static final enum b:Lcom/nianticproject/ingress/dn;

.field public static final enum c:Lcom/nianticproject/ingress/dn;

.field private static final synthetic d:[Lcom/nianticproject/ingress/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/nianticproject/ingress/dn;

    const-string/jumbo v1, "SIGN_ON"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/dn;->a:Lcom/nianticproject/ingress/dn;

    .line 70
    new-instance v0, Lcom/nianticproject/ingress/dn;

    const-string/jumbo v1, "SCANNER"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/dn;->b:Lcom/nianticproject/ingress/dn;

    .line 71
    new-instance v0, Lcom/nianticproject/ingress/dn;

    const-string/jumbo v1, "GLOBE"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/dn;->c:Lcom/nianticproject/ingress/dn;

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/dn;

    sget-object v1, Lcom/nianticproject/ingress/dn;->a:Lcom/nianticproject/ingress/dn;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/dn;->b:Lcom/nianticproject/ingress/dn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/dn;->c:Lcom/nianticproject/ingress/dn;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/dn;->d:[Lcom/nianticproject/ingress/dn;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/dn;
    .locals 1
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/nianticproject/ingress/dn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/dn;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/dn;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/nianticproject/ingress/dn;->d:[Lcom/nianticproject/ingress/dn;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/dn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/dn;

    return-object v0
.end method
