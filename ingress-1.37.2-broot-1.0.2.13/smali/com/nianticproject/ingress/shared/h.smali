.class public final enum Lcom/nianticproject/ingress/shared/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/h;

.field public static final enum b:Lcom/nianticproject/ingress/shared/h;

.field public static final enum c:Lcom/nianticproject/ingress/shared/h;

.field public static final enum d:Lcom/nianticproject/ingress/shared/h;

.field private static final synthetic e:[Lcom/nianticproject/ingress/shared/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/nianticproject/ingress/shared/h;

    const-string/jumbo v1, "NO_PLAYER_SPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/h;->a:Lcom/nianticproject/ingress/shared/h;

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/shared/h;

    const-string/jumbo v1, "PLAYER_TOO_MUCH_AP"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/h;->b:Lcom/nianticproject/ingress/shared/h;

    .line 16
    new-instance v0, Lcom/nianticproject/ingress/shared/h;

    const-string/jumbo v1, "PLAYER_OWNS_WORLD_OBJECTS"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/h;->c:Lcom/nianticproject/ingress/shared/h;

    .line 19
    new-instance v0, Lcom/nianticproject/ingress/shared/h;

    const-string/jumbo v1, "TEAM_ALREADY_SET"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/h;->d:Lcom/nianticproject/ingress/shared/h;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/h;

    sget-object v1, Lcom/nianticproject/ingress/shared/h;->a:Lcom/nianticproject/ingress/shared/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/shared/h;->b:Lcom/nianticproject/ingress/shared/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/h;->c:Lcom/nianticproject/ingress/shared/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/h;->d:Lcom/nianticproject/ingress/shared/h;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/ingress/shared/h;->e:[Lcom/nianticproject/ingress/shared/h;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/h;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/nianticproject/ingress/shared/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/h;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/h;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/nianticproject/ingress/shared/h;->e:[Lcom/nianticproject/ingress/shared/h;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/h;

    return-object v0
.end method
