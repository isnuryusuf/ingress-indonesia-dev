.class public final enum Lcom/nianticproject/ingress/shared/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/y;

.field public static final enum b:Lcom/nianticproject/ingress/shared/y;

.field public static final enum c:Lcom/nianticproject/ingress/shared/y;

.field public static final enum d:Lcom/nianticproject/ingress/shared/y;

.field public static final enum e:Lcom/nianticproject/ingress/shared/y;

.field public static final enum f:Lcom/nianticproject/ingress/shared/y;

.field private static final synthetic g:[Lcom/nianticproject/ingress/shared/y;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/nianticproject/ingress/shared/y;

    const-string/jumbo v1, "NO_ACTIONS_REQUIRED"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/y;->a:Lcom/nianticproject/ingress/shared/y;

    .line 68
    new-instance v0, Lcom/nianticproject/ingress/shared/y;

    const-string/jumbo v1, "CLIENT_MUST_UPGRADE"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/y;->b:Lcom/nianticproject/ingress/shared/y;

    .line 76
    new-instance v0, Lcom/nianticproject/ingress/shared/y;

    const-string/jumbo v1, "USER_REQUIRES_ACTIVATION"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/y;->c:Lcom/nianticproject/ingress/shared/y;

    .line 87
    new-instance v0, Lcom/nianticproject/ingress/shared/y;

    const-string/jumbo v1, "USER_MUST_ACCEPT_TOS"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/shared/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/y;->d:Lcom/nianticproject/ingress/shared/y;

    .line 99
    new-instance v0, Lcom/nianticproject/ingress/shared/y;

    const-string/jumbo v1, "DISPLAY_OPTIONAL_DIALOG"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/shared/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/y;->e:Lcom/nianticproject/ingress/shared/y;

    .line 111
    new-instance v0, Lcom/nianticproject/ingress/shared/y;

    const-string/jumbo v1, "DISPLAY_MANDATORY_DIALOG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/y;->f:Lcom/nianticproject/ingress/shared/y;

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/y;

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->a:Lcom/nianticproject/ingress/shared/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->b:Lcom/nianticproject/ingress/shared/y;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->c:Lcom/nianticproject/ingress/shared/y;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->d:Lcom/nianticproject/ingress/shared/y;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->e:Lcom/nianticproject/ingress/shared/y;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/shared/y;->f:Lcom/nianticproject/ingress/shared/y;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/shared/y;->g:[Lcom/nianticproject/ingress/shared/y;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/y;
    .locals 1
    .parameter

    .prologue
    .line 56
    const-class v0, Lcom/nianticproject/ingress/shared/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/y;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/y;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/nianticproject/ingress/shared/y;->g:[Lcom/nianticproject/ingress/shared/y;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/y;

    return-object v0
.end method
