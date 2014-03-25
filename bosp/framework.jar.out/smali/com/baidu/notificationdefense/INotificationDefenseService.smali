.class public interface abstract Lcom/baidu/notificationdefense/INotificationDefenseService;
.super Ljava/lang/Object;
.source "INotificationDefenseService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/notificationdefense/INotificationDefenseService$Stub;
    }
.end annotation


# virtual methods
.method public abstract areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract defense(Ljava/lang/String;ILandroid/app/Notification;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
