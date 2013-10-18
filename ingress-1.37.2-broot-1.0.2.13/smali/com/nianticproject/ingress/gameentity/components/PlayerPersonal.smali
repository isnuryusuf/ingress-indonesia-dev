.class public interface abstract Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/a;


# virtual methods
.method public abstract getAllowNicknameEdit()Z
.end method

.method public abstract getAllowedFactionChoice()Z
.end method

.method public abstract getAp()J
.end method

.method public abstract getClientLevel()I
.end method

.method public abstract getEnergyForRead()I
.end method

.method public abstract getEnergyState()Lcom/nianticproject/ingress/shared/f;
.end method

.method public abstract getMediaHighWaterMark(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getMediaHighWaterMarks()Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationSettings()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;
.end method

.method public abstract getProfileSettings()Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;
.end method

.method public abstract setAllowNicknameEdit(Z)V
.end method

.method public abstract setAllowedFactionChoice(Z)V
.end method

.method public abstract setAp(J)V
.end method

.method public abstract setClientLevel(I)V
.end method

.method public abstract setEnergyOnlyForPlayerService(I)V
.end method

.method public abstract setEnergyStateOnlyForPlayerService(Lcom/nianticproject/ingress/shared/f;)V
.end method

.method public abstract setMediaHighWaterMark(Ljava/lang/String;I)V
.end method

.method public abstract setMediaHighWaterMarks(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNotificationSettings(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V
.end method

.method public abstract setProfileSettings(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V
.end method
