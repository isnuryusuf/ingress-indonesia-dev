.class public Lcom/nianticproject/ingress/shared/rpc/PaginatedAchievementsParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final continuationToken:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerNickname:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedAchievementsParams;->playerNickname:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedAchievementsParams;->continuationToken:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedAchievementsParams;->playerNickname:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedAchievementsParams;->continuationToken:I

    .line 26
    return-void
.end method
