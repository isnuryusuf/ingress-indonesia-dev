.class final enum Lcom/nianticproject/ingress/common/playerprofile/ai;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/playerprofile/ai;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/playerprofile/ai;

.field public static final enum b:Lcom/nianticproject/ingress/common/playerprofile/ai;

.field public static final enum c:Lcom/nianticproject/ingress/common/playerprofile/ai;

.field public static final enum d:Lcom/nianticproject/ingress/common/playerprofile/ai;

.field private static final synthetic f:[Lcom/nianticproject/ingress/common/playerprofile/ai;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ai;

    const-string/jumbo v1, "ALL_TIME"

    const-string/jumbo v2, "ALL TIME"

    invoke-direct {v0, v1, v3, v2}, Lcom/nianticproject/ingress/common/playerprofile/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/ai;->a:Lcom/nianticproject/ingress/common/playerprofile/ai;

    .line 45
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ai;

    const-string/jumbo v1, "MONTH"

    const-string/jumbo v2, "MONTH"

    invoke-direct {v0, v1, v4, v2}, Lcom/nianticproject/ingress/common/playerprofile/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/ai;->b:Lcom/nianticproject/ingress/common/playerprofile/ai;

    .line 46
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ai;

    const-string/jumbo v1, "WEEK"

    const-string/jumbo v2, "WEEK"

    invoke-direct {v0, v1, v5, v2}, Lcom/nianticproject/ingress/common/playerprofile/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/ai;->c:Lcom/nianticproject/ingress/common/playerprofile/ai;

    .line 47
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ai;

    const-string/jumbo v1, "NOW"

    const-string/jumbo v2, "NOW"

    invoke-direct {v0, v1, v6, v2}, Lcom/nianticproject/ingress/common/playerprofile/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/ai;->d:Lcom/nianticproject/ingress/common/playerprofile/ai;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/playerprofile/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/ai;->a:Lcom/nianticproject/ingress/common/playerprofile/ai;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/ai;->b:Lcom/nianticproject/ingress/common/playerprofile/ai;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/ai;->c:Lcom/nianticproject/ingress/common/playerprofile/ai;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/ai;->d:Lcom/nianticproject/ingress/common/playerprofile/ai;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/ai;->f:[Lcom/nianticproject/ingress/common/playerprofile/ai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/nianticproject/ingress/common/playerprofile/ai;->e:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/playerprofile/ai;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/nianticproject/ingress/common/playerprofile/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ai;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/playerprofile/ai;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/ai;->f:[Lcom/nianticproject/ingress/common/playerprofile/ai;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/playerprofile/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/playerprofile/ai;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ai;->e:Ljava/lang/String;

    return-object v0
.end method
