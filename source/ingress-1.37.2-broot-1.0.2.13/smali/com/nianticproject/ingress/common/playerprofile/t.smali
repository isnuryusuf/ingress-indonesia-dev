.class public final enum Lcom/nianticproject/ingress/common/playerprofile/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/playerprofile/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/playerprofile/t;

.field public static final enum b:Lcom/nianticproject/ingress/common/playerprofile/t;

.field public static final enum c:Lcom/nianticproject/ingress/common/playerprofile/t;

.field public static final enum d:Lcom/nianticproject/ingress/common/playerprofile/t;

.field public static final enum e:Lcom/nianticproject/ingress/common/playerprofile/t;

.field private static final synthetic f:[Lcom/nianticproject/ingress/common/playerprofile/t;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/t;

    const-string/jumbo v1, "LOADING_OPTIONS"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/t;->a:Lcom/nianticproject/ingress/common/playerprofile/t;

    .line 49
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/t;

    const-string/jumbo v1, "LOADING_OPTIONS_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/playerprofile/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/t;->b:Lcom/nianticproject/ingress/common/playerprofile/t;

    .line 50
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/t;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/playerprofile/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/t;->c:Lcom/nianticproject/ingress/common/playerprofile/t;

    .line 51
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/t;

    const-string/jumbo v1, "SETTING_SELECTION"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/common/playerprofile/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/t;->d:Lcom/nianticproject/ingress/common/playerprofile/t;

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/t;

    const-string/jumbo v1, "SETTING_SELECTION_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/common/playerprofile/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/t;->e:Lcom/nianticproject/ingress/common/playerprofile/t;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/common/playerprofile/t;

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->a:Lcom/nianticproject/ingress/common/playerprofile/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->b:Lcom/nianticproject/ingress/common/playerprofile/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->c:Lcom/nianticproject/ingress/common/playerprofile/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->d:Lcom/nianticproject/ingress/common/playerprofile/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->e:Lcom/nianticproject/ingress/common/playerprofile/t;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/t;->f:[Lcom/nianticproject/ingress/common/playerprofile/t;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/playerprofile/t;
    .locals 1
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/t;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/playerprofile/t;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/t;->f:[Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/playerprofile/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/playerprofile/t;

    return-object v0
.end method
