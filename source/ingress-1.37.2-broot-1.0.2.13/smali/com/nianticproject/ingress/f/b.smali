.class public final enum Lcom/nianticproject/ingress/f/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/f/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/f/b;

.field public static final enum b:Lcom/nianticproject/ingress/f/b;

.field public static final enum c:Lcom/nianticproject/ingress/f/b;

.field public static final enum d:Lcom/nianticproject/ingress/f/b;

.field private static final synthetic e:[Lcom/nianticproject/ingress/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/nianticproject/ingress/f/b;

    const-string/jumbo v1, "UNINVITED"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/f/b;->a:Lcom/nianticproject/ingress/f/b;

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/f/b;

    const-string/jumbo v1, "INVITED"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/f/b;->b:Lcom/nianticproject/ingress/f/b;

    .line 19
    new-instance v0, Lcom/nianticproject/ingress/f/b;

    const-string/jumbo v1, "JOINED"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/f/b;->c:Lcom/nianticproject/ingress/f/b;

    .line 20
    new-instance v0, Lcom/nianticproject/ingress/f/b;

    const-string/jumbo v1, "INVITING"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/f/b;->d:Lcom/nianticproject/ingress/f/b;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/f/b;

    sget-object v1, Lcom/nianticproject/ingress/f/b;->a:Lcom/nianticproject/ingress/f/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/f/b;->b:Lcom/nianticproject/ingress/f/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/f/b;->c:Lcom/nianticproject/ingress/f/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/f/b;->d:Lcom/nianticproject/ingress/f/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/ingress/f/b;->e:[Lcom/nianticproject/ingress/f/b;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/f/b;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/nianticproject/ingress/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/b;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/f/b;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/nianticproject/ingress/f/b;->e:[Lcom/nianticproject/ingress/f/b;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/f/b;

    return-object v0
.end method
